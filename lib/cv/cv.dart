import 'package:flutter/material.dart';

class CvPage extends StatefulWidget {
  @override
  _CvPageState createState() => _CvPageState();
}

class _CvPageState extends State<CvPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade800,
      child: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 5,
            color: Colors.white70,
            // decoration: BoxDecoration(borderRadius: BorderRadius.circular()),
          )
        ],
      ),
    );
  }
}
