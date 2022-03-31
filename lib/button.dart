import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:calculator/numerics.dart';

class Button extends StatelessWidget {
  var number, callback;

  Button({this.number, this.callback});
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GestureDetector(
      onTap: callback,
      child: Container(
          padding: EdgeInsets.all(15.0),
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Color(0xFFdbdad7)),
          child: Center(
            child: Text(
              number,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          )),
    ));
  }
}
