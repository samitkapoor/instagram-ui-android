import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: MediaQuery.of(context).size.width,
      height: 35,
      decoration: BoxDecoration(
        color: Color.fromRGBO(38,38,38,1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Icon(
              Icons.search,
              color: Color.fromRGBO(170, 170, 170, 1),
              size: 16,
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Text(
              'Search',
              style: TextStyle(
                fontSize: 16,
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
