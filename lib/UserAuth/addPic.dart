import 'package:flutter/material.dart';
import 'package:gig/Screens/home.dart';

class AddPic extends StatefulWidget {
  @override
  _AddPicState createState() => _AddPicState();
}

class _AddPicState extends State<AddPic> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                "Select a pic form you galary",
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(top: 70),
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(170),
                  color: Color(0xff00295C),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(top: 95),
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(170),
                  color: Colors.white,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(top: 200, left: 100),
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(170),
                  color: Colors.blue,
                ),
                child: Icon(
                  Icons.add_a_photo,
                  size: 20,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 140, right: 20),
              child: Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      new MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 0),
                    child: Container(
                      // margin: EdgeInsets.only(left: 40),
                      child: Container(
                        height: 40,
                        width: 60,
                        color: Color(0xff00295C),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.east,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
