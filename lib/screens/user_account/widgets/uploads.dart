import 'package:flutter/material.dart';

import '../../post/post.dart';
import '../../../data.dart';

class Uploads extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        (ctx, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => PostScreen(index: index),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
                image: DecorationImage(
                  image: NetworkImage(
                      Data().uploads[index]["postImage"].toString()),
                  fit: BoxFit.cover,
                ),
                color: Colors.black,
              ),
            ),
          );
        },
        childCount: Data().uploads.length,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1,
      ),
    );
  }
}
