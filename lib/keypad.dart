import 'package:flutter/cupertino.dart';
import 'button.dart';

class Keypad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.25,
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Button(number: 'Sin'),
                  Button(number: 'Cos'),
                  Button(number: 'Tan'),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Button(number: '1'),
                  Button(number: '2'),
                  Button(number: '3'),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Button(number: '4'),
                  Button(number: '5'),
                  Button(number: '6'),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Button(number: '7'),
                  Button(number: '8'),
                  Button(number: '9'),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Button(number: '0'),
                  Button(number: '.'),
                  Button(number: '='),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
