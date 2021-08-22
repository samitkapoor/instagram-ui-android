import 'package:flutter/material.dart';

class PostHeader extends StatelessWidget {
  var val;
  PostHeader(this.val);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      color: Colors.transparent,
      child: Row(
        children: [
          SizedBox(width: 10),
          CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 15,
            backgroundImage: NetworkImage(
              val['profileImage'].toString(),
            ),
          ),
          SizedBox(width: 10),
          Text(
            val['username'].toString(),
            style: TextStyle(
              color: Color.fromRGBO(252, 252, 252, 1),
              fontSize: 15,
              fontFamily: 'FreeSansBold',
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          Icon(
            Icons.more_vert,
            color: Color.fromRGBO(252, 252, 252, 1),
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
