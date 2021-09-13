import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  Color color;
  SearchBar(this.color);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: MediaQuery.of(context).size.width,
      height: 40,
      decoration: BoxDecoration(
        color: Color.fromRGBO(38, 38, 38, 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Icon(
              Icons.search,
              // color: Color.fromRGBO(170, 170, 170, 1),
              color: color,
              size: 18,
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: const Text(
              'Search',
              style: TextStyle(
                fontSize: 18,
                letterSpacing: 1,
                fontFamily: 'FreeSans',
                color: Color.fromRGBO(170, 170, 170, 1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
