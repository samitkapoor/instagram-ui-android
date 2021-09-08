import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '/screens/messages/widgets/searchbar.dart';
import '/screens/messages/widgets/tabcards.dart';
import '/screens/messages/widgets/messagescard.dart';
import '/screens/messages/widgets/roomscard.dart';
import '/data.dart';

class MessengerScreen extends StatefulWidget {
  PageController controller;
  MessengerScreen(this.controller);
  @override
  State<MessengerScreen> createState() => _MessengerScreenState();
}

class _MessengerScreenState extends State<MessengerScreen> {
  int index = 0;

  var screens = [
    MessagesCard(),
    RoomsCard(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            widget.controller.jumpToPage(0);
          },
          icon: Icon(
            Icons.arrow_back_sharp,
            color: Colors.white,
          ),
        ),
        title: Row(
          children: [
            Text(
              Data().mydetails['username'].toString(),
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                color: Color.fromRGBO(252, 252, 252, 1),
              ),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white,
            ),
          ],
        ),
        actions: [
          Container(
            height: 50,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/actionbutton.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            index == 0
                ? Center(
                    child: SearchBar(),
                  )
                : Container(),
            Container(
              height: 50,
              width: double.infinity,
              child: Row(
                children: [
                  Flexible(
                      child: InkWell(
                          onTap: () {
                            setState(() {
                              index = 0;
                            });
                          },
                          child: TabCard(index, 'Chats', 0))),
                  Flexible(
                      child: InkWell(
                          onTap: () {
                            setState(() {
                              index = 1;
                            });
                          },
                          child: TabCard(index, 'Rooms', 1))),
                  Flexible(
                      child: InkWell(
                          onTap: () {},
                          child: TabCard(index, '0 requests', 2))),
                ],
              ),
            ),
            screens[index],
          ],
        ),
      ),
    );
  }
}
