import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  String equation;

  Screen({this.equation});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
        child: Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.25,
      child: Text(
        equation,
        style: TextStyle(
          fontSize: 30,
        ),
      ),
    ));
  }
}
