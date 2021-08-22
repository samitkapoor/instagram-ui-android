import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../data.dart';

AppBar getAppBar(BuildContext context) {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: Theme.of(context).backgroundColor,
    title: Row(
      children: [
        Icon(
          FontAwesomeIcons.lock,
          size: 18,
        ),
        SizedBox(width: 10),
        Text(
          Data().mydetails['username'].toString(),
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
            color: Color.fromRGBO(252, 252, 252, 1),
          ),
        ),
        SizedBox(width: 8),
        Icon(
          Icons.keyboard_arrow_down_rounded,
        ),
      ],
    ),
    actions: [
      Container(
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          shape: BoxShape.circle,
        ),
        height: 5,
        child: ClipRRect(
          child: Icon(
            FontAwesomeIcons.plusSquare,
            color: Colors.white,
            size: 25,
          ),
        ),
      ),
      SizedBox(
        width: 20,
      ),
      Icon(
        FontAwesomeIcons.gripLines,
      ),
      SizedBox(
        width: 10,
      ),
    ],
  );
}

Container getStatsCard(String num, String text) {
  return Container(
    height: 100,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          num,
          style: TextStyle(
            color: Color.fromRGBO(244, 244, 244, 1),
            fontWeight: FontWeight.bold,
            fontFamily: 'FreeSansBold',
            fontSize: 20,
          ),
        ),
        Text(
          text,
          style: TextStyle(
            color: Color.fromRGBO(244, 244, 244, 1),
            fontFamily: 'FreeSans',
          ),
        ),
      ],
    ),
  );
}

Row getHighlights() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      ...Data().highlights.map((e) {
        return Container(
          margin: EdgeInsets.fromLTRB(5, 15, 5, 0),
          height: 120,
          width: 75,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 75,
                width: 75,
                child: Align(
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: CircleAvatar(
                          backgroundColor: Color.fromRGBO(102, 102, 102, 1),
                          radius: 35,
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 34,
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          backgroundImage: NetworkImage(
                            e['image'].toString(),
                          ),
                          radius: 30,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5),
              Text(
                e['name'].toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'FreeSans',
                ),
              )
            ],
          ),
        );
      }).toList(),
      Container(
        margin: EdgeInsets.fromLTRB(5, 15, 5, 0),
        height: 120,
        width: 75,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 75,
              width: 75,
              child: Align(
                alignment: Alignment.center,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        backgroundColor: Color.fromRGBO(197, 197, 197, 1),
                        radius: 35,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 34,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Icon(
                          Icons.add,
                          size: 35,
                          color: Colors.white,
                        ),
                        radius: 30,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 5),
            Text(
              'New',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontFamily: 'FreeSans',
              ),
            )
          ],
        ),
      ),
    ],
  );
}

Row getEditProfileButton(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      GestureDetector(
        onTap: () {},
        child: Container(
          margin: EdgeInsets.fromLTRB(10, 20, 0, 0),
          height: 40,
          width: MediaQuery.of(context).size.width - 60,
          decoration: BoxDecoration(
            border: Border.all(
              color: Color.fromRGBO(87, 87, 87, 1),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              'Edit Profile',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'FreeSans',
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
      GestureDetector(
        onTap: () {},
        child: Container(
          margin: EdgeInsets.fromLTRB(10, 20, 0, 0),
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            border: Border.all(
              color: Color.fromRGBO(87, 87, 87, 1),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ],
  );
}
