import 'package:calculator/keypad.dart';
import 'package:calculator/screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  Calculator({Key key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Screen(
                equation: '2+2',
              ),
              SizedBox(
                height: 50,
              ),
              Align(
                alignment: AlignmentDirectional.bottomEnd,
                child:
                    IconButton(icon: Icon(Icons.backspace), onPressed: () {}),
              ),
              Divider(
                color: Colors.black,
              ),
              Expanded(
                child: Keypad(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
