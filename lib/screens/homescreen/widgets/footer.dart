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
          const SizedBox(width: 10),
          const Icon(
            FontAwesomeIcons.heart,
            color: Colors.white,
          ),
          const SizedBox(width: 15),
          const Icon(
            FontAwesomeIcons.comment,
            color: Colors.white,
          ),
          const SizedBox(width: 15),
          const Icon(
            FontAwesomeIcons.paperPlane,
            color: Colors.white,
            size: 20,
          ),
          const Spacer(),
          const Icon(
            Icons.bookmark_outline,
            color: Colors.white,
          ),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}
