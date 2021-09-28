import 'package:flutter/material.dart';

import './widgets/tabview.dart';
import '/components/bottomappbar.dart';
import 'functions.dart';
import '../../data.dart';

class UserAccount extends StatelessWidget {
  static const routeName = '/useraccount';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: getAppBar(context),
      body: CustomScrollView(
        physics: ScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 10)),
          SliverToBoxAdapter(
            child: Container(
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
                  getStatsCard(Data().uploads.length.toString(), 'Posts'),
                  getStatsCard('199', 'Followers'),
                  getStatsCard('222', 'Following'),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(child: const SizedBox(height: 10)),
          SliverToBoxAdapter(
            child: Padding(
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
          ),
          SliverToBoxAdapter(
            child: Padding(
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
          ),
          SliverToBoxAdapter(child: getEditProfileButton(context)),
          SliverToBoxAdapter(child: getHighlights()),
          getTabBar(),
        ],
      ),
      bottomNavigationBar: const BottomAppBarWidget(),
    );
  }
}
