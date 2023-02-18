import 'package:flutter/material.dart';

import './widgets/story_section.dart';
import '../../components/post_card.dart';
import '../../data.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Stories(),
        ...Data().posts.map((val) {
          return Post(val);
        }).toList(),
      ],
    );
  }
}
