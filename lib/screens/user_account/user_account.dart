import 'package:flutter/material.dart';

import './widgets/bottomappbar.dart';
import './widgets/tabview.dart';
import 'functions.dart';
import '../../data.dart';

class UserAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: getAppBar(context),
      body: ListView(
        physics: ScrollPhysics(),
        children: [
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.fromLTRB(10, 0, 30, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    Data().mydetails['image'].toString(),
                  ),
                  radius: 50,
                ),
                getStatsCard('27', 'Posts'),
                getStatsCard('199', 'Followers'),
                getStatsCard('222', 'Following'),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Text(
              Data().mydetails['name'].toString(),
              style: TextStyle(
                color: Color.fromRGBO(244, 244, 244, 1),
                fontFamily: 'FreeSans',
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Text(
              Data().mydetails['bio'].toString(),
              style: TextStyle(
                color: Color.fromRGBO(244, 244, 244, 1),
                fontFamily: 'FreeSans',
                fontSize: 16,
              ),
            ),
          ),
          getEditProfileButton(context),
          getHighlights(),
          Container(
            height: MediaQuery.of(context).size.height -
                getAppBar(context).preferredSize.height -
                MediaQuery.of(context).padding.top -
                50,
            child: getTabBar(),
          ),
        ],
      ),
      bottomNavigationBar: getBottomAppBar(),
    );
  }
}
