import 'package:flutter/material.dart';

import '../../../data.dart';
import '../../../main.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(
              Data().mydetails['image'].toString(),
            ),
          ),
          SizedBox(width: 10),
          Text(
            Data().mydetails['username'].toString(),
            style: TextStyle(
              color: Color.fromRGBO(248, 248, 248, 1),
              fontFamily: 'FreeSans',
              fontSize: 15,
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => MyApp(),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromRGBO(210, 210, 210, 1),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Text(
                  'Log in',
                  style: TextStyle(
                    color: Color.fromRGBO(248, 248, 248, 1),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'FreeSansBold',
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
          Icon(
            Icons.more_vert,
            size: 20,
            color: Color.fromRGBO(158, 158, 158, 1),
          ),
        ],
      ),
    );
  }
}
