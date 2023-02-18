import 'package:flutter/material.dart';

AppBar getAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Theme.of(context).backgroundColor,
    title: Text(
      "Post",
      style: TextStyle(
        fontSize: 24,
        fontFamily: 'FreeSans',
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
