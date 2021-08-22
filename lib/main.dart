import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import './screens/homescreen/homescreen.dart';
import './screens/user_account/user_account.dart';
import './screens/login/login.dart';
import './data.dart';

void main() {
  runApp(Instagram());
}

class Instagram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.black,
      ),
      home: Login(),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 0;
  var screens = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    UserAccount(),
  ];

  void updateIndex(int val) {
    setState(() {
      index = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).backgroundColor,
        title: Text(
          'Instagram',
          style: TextStyle(
            fontFamily: 'Instagram',
            fontSize: 28,
            color: Color.fromRGBO(252, 252, 252, 1),
          ),
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
                color: Color.fromRGBO(252, 252, 252, 1),
                size: 25,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            FontAwesomeIcons.facebookMessenger,
            color: Color.fromRGBO(252, 252, 252, 1),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: screens[index],
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                updateIndex(0);
              },
              child: Container(
                height: 50,
                child: Icon(
                  Icons.home,
                  color: Color.fromRGBO(249, 249, 249, 1),
                  size: 30,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                updateIndex(1);
              },
              child: Container(
                height: 50,
                child: Icon(
                  Icons.search,
                  color: Color.fromRGBO(249, 249, 249, 1),
                  size: 30,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                updateIndex(2);
              },
              child: Container(
                height: 50,
                child: Icon(
                  Icons.movie,
                  color: Color.fromRGBO(249, 249, 249, 1),
                  size: 30,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                updateIndex(3);
              },
              child: Container(
                height: 50,
                child: Icon(
                  Icons.favorite_border_outlined,
                  color: Color.fromRGBO(249, 249, 249, 1),
                  size: 30,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => UserAccount(),
                  ),
                );
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
      ),
    );
  }
}
