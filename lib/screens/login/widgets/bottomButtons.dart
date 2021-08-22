import 'package:flutter/material.dart';

Container getBoxes(BuildContext context, Border border, String text) {
  return Container(
    width: MediaQuery.of(context).size.width / 2,
    height: 50,
    decoration: BoxDecoration(
      border: border,
    ),
    child: Align(
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
          color: Color.fromRGBO(40, 147, 219, 1),
          fontSize: 15,
          fontFamily: 'FreeSans',
        ),
      ),
    ),
  );
}
