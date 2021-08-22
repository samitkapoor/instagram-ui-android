import 'package:flutter/material.dart';

import './your_story_card.dart';
import './story_card.dart';
import '../../../data.dart';

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Data().stories.length,
        itemBuilder: (context, index) {
          if (index == 0) {
            return YourStory();
          } else {
            return StoryCard(
              Data().stories[index],
            );
          }
        },
      ),
    );
  }
}
