import 'package:flutter/material.dart';

import '/main.dart';
import '/screens/user_account/user_account.dart';
import '/screens/search/search.dart';
import '/data.dart';

class BottomAppBarWidget extends StatelessWidget {
  const BottomAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(MyApp.routeName);
            },
            child: Container(
              height: 50,
              child: const Icon(
                Icons.home,
                color: Color.fromRGBO(249, 249, 249, 1),
                size: 30,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(SearchScreen.routeName);
            },
            child: Container(
              height: 50,
              child: const Icon(
                Icons.search,
                color: Color.fromRGBO(249, 249, 249, 1),
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
              child: const Icon(
                Icons.favorite_border_outlined,
                color: Color.fromRGBO(249, 249, 249, 1),
                size: 30,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(UserAccount.routeName);
            },
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
