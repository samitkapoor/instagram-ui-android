import 'package:flutter/material.dart';

import './tags.dart';
import './uploads.dart';

class getTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: TabBar(
          physics: ScrollPhysics(),
          indicatorColor: Colors.white,
          tabs: [
            Tab(
              child: Icon(Icons.apps_outlined),
            ),
            Tab(
              child: Icon(Icons.account_box_outlined),
            ),
          ],
        ),
        body: TabBarView(
          children: [
            Uploads(),
            Tags(),
          ],
        ),
      ),
    );
  }
}
