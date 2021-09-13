import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import './screens/messages/message.dart';
import './screens/homescreen/homescreen.dart';
import './screens/user_account/user_account.dart';
import './screens/search/search.dart';
import './screens/login/login.dart';
import '/components/bottomappbar.dart';
import './data.dart';

void main() {
  runApp(Instagram());
}

class Instagram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        MyApp.routeName: (context) => MyApp(),
        UserAccount.routeName: (context) => UserAccount(),
        SearchScreen.routeName: (context) => SearchScreen(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.black,
      ),
      home: Login(),
    );
  }
}

class MyApp extends StatefulWidget {
  static const routeName = '/my-app';
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PageController controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

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
            title: const Text(
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
              const SizedBox(
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
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          body: HomeScreen(),
          bottomNavigationBar: const BottomAppBarWidget(),
        ),
        MessengerScreen(controller),
      ],
    );
  }
}
