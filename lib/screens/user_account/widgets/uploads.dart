import 'package:flutter/material.dart';

import '../../../data.dart';

class Uploads extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1,
      ),
      itemCount: Data().uploads.length,
      itemBuilder: (ctx, index) {
        return Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
            ),
            image: DecorationImage(
              image: NetworkImage(Data().uploads[index]),
              fit: BoxFit.contain,
            ),
            color: Colors.black,
          ),
        );
      },
    );
  }
}
