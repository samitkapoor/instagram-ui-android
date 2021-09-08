import 'package:flutter/material.dart';

class TabCard extends StatelessWidget {
  int number, index;
  String text;
  TabCard(this.number, this.text, this.index);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(color: index == number ? Colors.white : Colors.black),
        Container(
          height: 49,
          decoration: BoxDecoration(
            color: Colors.black,
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'FreeSans',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
