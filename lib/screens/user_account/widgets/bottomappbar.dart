import 'package:flutter/material.dart';

import '../../../data.dart';

class getBottomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              height: 50,
              child: Icon(
                Icons.home,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 50,
              child: Icon(
                Icons.search,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 26,
              width: 26,
              decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
                image: DecorationImage(
                  image: AssetImage('assets/images/reel.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 50,
              child: Icon(
                Icons.favorite_border_outlined,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage(
                Data().mydetails['image'].toString(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
