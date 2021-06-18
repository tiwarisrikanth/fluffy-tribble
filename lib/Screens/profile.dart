import 'package:flutter/material.dart';
import 'package:gig/Screens/fav.dart';
import 'package:gig/Screens/home.dart';
import 'package:gig/Screens/search.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _selectedIndex = 3;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
      style: optionStyle,
    ),
    Text(
      'Likes',
      style: optionStyle,
    ),
    Text(
      'Search',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(.1),
              )
            ],
          ),
          child: SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: GNav(
                rippleColor: Color(0xff00295C),
                hoverColor: Color(0xff00295C),
                gap: 8,
                activeColor: Colors.white,
                iconSize: 24,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                duration: Duration(milliseconds: 400),
                tabBackgroundColor: Color(0xff00295C),
                color: Colors.black,
                tabs: [
                  GButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        new MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      );
                    },
                    icon: Icons.home,
                    text: 'Home',
                  ),
                  GButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        new MaterialPageRoute(
                          builder: (context) => FavPage(),
                        ),
                      );
                    },
                    icon: Icons.favorite,
                    text: 'Likes',
                  ),
                  GButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        new MaterialPageRoute(
                          builder: (context) => SearchPage(),
                        ),
                      );
                    },
                    icon: Icons.search,
                    text: 'Search',
                  ),
                  GButton(
                    onPressed: () {
                      print("Ypu are in person Page");
                    },
                    icon: Icons.person,
                    text: 'Profile',
                  ),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
