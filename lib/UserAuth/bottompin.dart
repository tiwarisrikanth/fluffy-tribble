import 'package:flutter/material.dart';
import 'package:gig/UserAuth/intro.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class BottomPin extends StatefulWidget {
  @override
  _BottomPinState createState() => _BottomPinState();
}

class _BottomPinState extends State<BottomPin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        color: Theme.of(context).canvasColor,
      ),
      // height: 100,
      child: Column(
        children: [
          Text("Please Enter the pin sent on your mobile number"),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
            width: 300,
            child: PinCodeTextField(
              // controller: otpConfirmationController,
              keyboardType: TextInputType.number,
              appContext: context,
              length: 6,
              onChanged: (value) {
                //Fluttertoast.showToast(msg: value);
              },
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(5),
                fieldHeight: 50,
                fieldWidth: 40,
                inactiveColor: Colors.grey,
                activeColor: Colors.green.shade400,
                selectedColor: Colors.orange.shade500,
              ),
              onCompleted: (value) async {
                // // Fluttertoast.showToast(msg: value);
                // SharedPreferences sharedOTP =
                //     await SharedPreferences.getInstance();
                // sharedOTP.setString("registerOTP", value);
              },
            ),
          ),
          SizedBox(
            height: 40,
          ),
          InkWell(
            onTap: () {
              Navigator.pushReplacement(context,
                  new MaterialPageRoute(builder: (context) => IntroScreen()));
            },
            child: Container(
              margin: EdgeInsets.only(left: 40),
              child: Container(
                height: 70,
                width: 140,
                color: Color(0xff00295C),
                child: Icon(
                  Icons.east,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
