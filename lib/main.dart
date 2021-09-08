import 'package:flutter/material.dart';

import './screens/messages/message.dart';
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

  void updateIndex(int val) {
    setState(() {
      index = val;
    });
  }

  PageController controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      controller: controller,
      children: [
        Scaffold(
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
                height: 24,
                width: 24,
                decoration: BoxDecoration(
                  color: Theme.of(context).backgroundColor,
                  image: DecorationImage(
                    image: AssetImage('assets/images/upload.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {
                  controller.jumpToPage(1);
                },
                child: Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                    color: Theme.of(context).backgroundColor,
                    image: DecorationImage(
                      image: AssetImage('assets/images/message.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          body: HomeScreen(),
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
        ),
        MessengerScreen(controller),
      ],
    );
  }
}
