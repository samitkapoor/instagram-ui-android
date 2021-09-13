import 'package:flutter/material.dart';

import '/data.dart';

class MessagesCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ScrollPhysics(),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
            margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ...Data().messages.map(
                  (ele) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 70,
                          width: 65,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  width: 59,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  width: 56,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image:
                                          NetworkImage(ele['image'].toString()),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              ele['name'].toString(),
                              style: TextStyle(
                                color: Color.fromRGBO(222, 222, 222, 1),
                                fontFamily: 'FreeSans',
                              ),
                            ),
                            Text(
                              ele['message'].toString(),
                              style: TextStyle(
                                color: Color.fromRGBO(147, 147, 147, 1),
                                fontFamily: 'FreeSans',
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                          height: 20,
                          width: 20,
                          decoration: const BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage('assets/images/camera.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ).toList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
