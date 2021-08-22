import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      color: Colors.transparent,
      child: Row(
        children: [
          SizedBox(width: 10),
          Icon(
            FontAwesomeIcons.heart,
            color: Colors.white,
          ),
          SizedBox(width: 15),
          Icon(
            FontAwesomeIcons.comment,
            color: Colors.white,
          ),
          SizedBox(width: 15),
          Icon(
            FontAwesomeIcons.paperPlane,
            color: Colors.white,
            size: 20,
          ),
          Spacer(),
          Icon(
            Icons.bookmark_outline,
            color: Colors.white,
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
