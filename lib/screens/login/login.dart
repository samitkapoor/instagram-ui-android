import 'package:flutter/material.dart';

import './widgets/bottomButtons.dart';
import './widgets/accounts.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Text(
            'Instagram',
            style: TextStyle(
              color: Color.fromRGBO(248, 248, 248, 1),
              fontFamily: 'Instagram',
              fontSize: 40,
            ),
            textAlign: TextAlign.center,
          ),
          Account(),
          SizedBox(
            height: MediaQuery.of(context).size.height -
                50 -
                52 -
                40 -
                MediaQuery.of(context).padding.top -
                MediaQuery.of(context).padding.bottom,
          ),
          Row(
            children: [
              getBoxes(
                context,
                Border(
                  top: BorderSide(
                      color: Color.fromRGBO(39, 39, 39, 1), width: 1),
                  right: BorderSide(
                      color: Color.fromRGBO(39, 39, 39, 1), width: 1),
                ),
                'Switch accounts',
              ),
              getBoxes(
                context,
                Border(
                  top: BorderSide(
                      color: Color.fromRGBO(39, 39, 39, 1), width: 1),
                  left: BorderSide(
                      color: Color.fromRGBO(39, 39, 39, 1), width: 1),
                ),
                'Sign Up',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
