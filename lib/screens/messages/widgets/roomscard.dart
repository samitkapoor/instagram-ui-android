import 'package:flutter/material.dart';

class RoomsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 20),
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/noroom.jpg'),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Text(
            'Video chat with anyone',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: 'FreeSans',
              fontSize: 25,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Share a link to invite anyone to video',
            style: TextStyle(
              color: Color.fromRGBO(121, 121, 121, 1),
              fontSize: 15,
            ),
          ),
          Text(
            'chat, even if they don\'t have Instagram.',
            style: TextStyle(
              color: Color.fromRGBO(121, 121, 121, 1),
              fontSize: 15,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Create Room',
            style: TextStyle(
              color: Color.fromRGBO(49, 129, 190, 1),
              fontSize: 15,fontFamily: 'FreeSans',
            ),
          ),
        ],
      ),
    );
  }
}
