import 'package:calculator/keypad.dart';
import 'package:calculator/screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:calculator/numerics.dart';

import 'button.dart';

class Calculator extends StatefulWidget {
  Calculator({Key key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String equationTxt = '';
  @override
  Widget build(BuildContext context) {
    // equationTxt = '';
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Screen(
                equation: this.equationTxt,
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 35),
                alignment: AlignmentDirectional.centerEnd,
                child: GestureDetector(
                    child: Icon(Icons.backspace),
                    onLongPress: () {
                      setState(() {
                        this.equationTxt = '';
                      });
                    },
                    onTap: () {
                      setState(() {
                        this.equationTxt = this
                            .equationTxt
                            .substring(0, this.equationTxt.length - 1);
                      });
                    }),
              ),
              Divider(
                color: Colors.black,
              ),
              Expanded(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Button(number: '/'),
                            Button(number: '*'),
                            Button(number: '+'),
                            Button(number: '-'),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Button(
                              number: '1',
                              callback: () {
                                setState(() {
                                  this.equationTxt += '1';
                                });
                              },
                            ),
                            Button(
                              number: '2',
                              callback: () {
                                setState(() {
                                  this.equationTxt += '2';
                                });
                              },
                            ),
                            Button(
                              number: '3',
                              callback: () {
                                setState(() {
                                  this.equationTxt += '3';
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Button(
                              number: '4',
                              callback: () {
                                setState(() {
                                  this.equationTxt += '4';
                                });
                              },
                            ),
                            Button(
                              number: '5',
                              callback: () {
                                setState(() {
                                  this.equationTxt += '5';
                                });
                              },
                            ),
                            Button(
                              number: '6',
                              callback: () {
                                setState(() {
                                  this.equationTxt += '6';
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Button(
                              number: '7',
                              callback: () {
                                setState(() {
                                  this.equationTxt += '7';
                                });
                              },
                            ),
                            Button(
                              number: '8',
                              callback: () {
                                setState(() {
                                  this.equationTxt += '8';
                                });
                              },
                            ),
                            Button(
                              number: '9',
                              callback: () {
                                setState(() {
                                  this.equationTxt += '9';
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Button(
                              number: '0',
                              callback: () {
                                setState(() {
                                  this.equationTxt += '0';
                                });
                              },
                            ),
                            Button(
                              number: '.',
                              callback: () {
                                setState(() {
                                  this.equationTxt += '.';
                                });
                              },
                            ),
                            Button(
                              number: '=',
                              callback: () {
                                setState(() {});
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}
