import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  var data;
  StoryCard(this.data);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 100,
      margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 90,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 80,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        stops: [
                          0.35,
                          0.6,
                          1,
                        ],
                        colors: [
                          Color.fromRGBO(179, 43, 99, 1),
                          Color.fromRGBO(220, 129, 126, 1),
                          Color.fromRGBO(255, 221, 135, 1),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 75,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 70,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(data['image']),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            data['username'],
            softWrap: true,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontFamily: 'FreeSans',
              color: Color.fromRGBO(218, 218, 218, 1),
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
