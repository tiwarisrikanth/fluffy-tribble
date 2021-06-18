import 'package:flutter/material.dart';
import 'package:gig/UserAuth/bottompin.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Color(0xff00295C),
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "to start working",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 5,
                      child: TextField(
                        // controller: emailController,
                        autocorrect: true,
                        keyboardType: TextInputType.number,
                        cursorColor: Color(0xff00295C),
                        decoration: InputDecoration(
                          hintText: 'Enter your mobile number',
                          prefixIcon: Icon(
                            Icons.phone,
                            color: Color(0xff00295C),
                          ),
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Colors.white70,
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                            borderSide:
                                BorderSide(color: Colors.white, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide:
                                BorderSide(color: Colors.white, width: 2),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            showModalBottomSheet<Null>(
                              isScrollControlled: true,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30)),
                              ),
                              context: context,
                              builder: (BuildContext context) =>
                                  bottomPinEntry(),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 40),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                height: 70,
                                width: 140,
                                color: Color(0xff00295C),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.east,
                                      color: Colors.white,
                                    ),
                                    // SizedBox(
                                    //   width: 10,
                                    // ),
                                    // Text(
                                    //   "Next",
                                    //   style: TextStyle(color: Colors.white),
                                    // )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Back To SignIn ?",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

bottomPinEntry() {
  return Container(
      height: 400,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Container(
            height: 9,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          BottomPin(),
        ],
      ));
}
