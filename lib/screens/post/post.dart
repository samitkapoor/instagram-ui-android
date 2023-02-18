import 'package:flutter/material.dart';

import '../../data.dart';
import '../../components/post_card.dart';
import '../../components/bottomappbar.dart';
import './widgets/appbar.dart';

class PostScreen extends StatelessWidget {
  PostScreen({Key? key, this.index = 0}) : super(key: key);

  int index;

  static const routeName = "/post-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: getAppBar(context),
      body: Post(Data().uploads[index]),
      bottomNavigationBar: BottomAppBarWidget(),
    );
  }
}
