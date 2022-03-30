import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  var number;

  Button({this.number});
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GestureDetector(
      onTap: () {},
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
