import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

import './tags.dart';
import './uploads.dart';

// the tab view on the profile page
// the posted image grid and the tagged posts grid
class getTabBar extends StatefulWidget {
  @override
  State<getTabBar> createState() => _getTabBarState();
}

class _getTabBarState extends State<getTabBar> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return MultiSliver(
      children: [
        SliverPinnedHeader(
          child: Container(
            color: Colors.black,
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        index = 0;
                      });
                    },
                    child: Center(
                      child: Icon(
                        Icons.apps_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        index = 1;
                      });
                    },
                    child: Center(
                      child: Icon(
                        Icons.account_box_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        index == 0 ? Uploads() : Tags(),
      ],
    );
  }
}
