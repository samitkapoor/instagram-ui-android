import 'package:flutter/material.dart';

import '../screens/homescreen/widgets/header.dart';
import '../screens/homescreen/widgets/footer.dart';

class Post extends StatelessWidget {
  var val;

  Post(this.val);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PostHeader(val),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  val['postImage'].toString(),
                ),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          PostFooter(),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Text(
              val['likes'].toString(),
              style: TextStyle(
                color: Color.fromRGBO(235, 235, 235, 1),
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontFamily: 'FreeSansBold',
              ),
              textAlign: TextAlign.start,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '${val['username'].toString()} ',
                    style: TextStyle(
                      color: Color.fromRGBO(225, 225, 225, 1),
                      fontSize: 15,
                      fontFamily: 'FreeSansBold',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: val['caption'].toString(),
                    style: TextStyle(
                      color: Color.fromRGBO(225, 225, 225, 1),
                      fontSize: 15,
                      fontFamily: 'FreeSans',
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Text(
              val['comments'].toString(),
              style: TextStyle(
                color: Color.fromRGBO(152, 152, 152, 1),
                fontSize: 15,
                fontFamily: 'FreeSans',
              ),
              textAlign: TextAlign.start,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Text(
              val['time'].toString(),
              style: TextStyle(
                fontFamily: 'FreeSans',
                color: Color.fromRGBO(152, 152, 152, 1),
                fontSize: 11,
              ),
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ),
    );
  }
}
