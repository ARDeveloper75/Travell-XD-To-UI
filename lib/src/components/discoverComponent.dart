import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';
import 'package:travell_ui/src/widgets/kText.dart';

class DiscoverComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 33, right: 20),
            child: KText(
              text: 'Best Places To Travel   In December',
              color: HexColor('0CA47F').withOpacity(.80),
              fontSize: 37,
              maxLines: 2,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            height: 235,
            width: 340,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black54,
                  blurRadius: 60,
                ),
              ],
              color: Colors.white,
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  top: -20,
                  right: 20,
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black54,
                            blurRadius: 60,
                            spreadRadius: .50),
                      ],
                    ),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.red.shade900,
                      child: Icon(
                        Icons.message_sharp,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 20,
                  child: KText(
                    text: 'Booking Available',
                    color: Colors.green.shade300,
                  ),
                ),
                Positioned(
                  top: 70,
                  left: 20,
                  child: KText(
                    text: 'Ocean Breeze',
                    color: Colors.black,
                    fontSize: 35,
                    fontFamily: 'Lato Bold',
                  ),
                ),
                Positioned(
                  top: 130,
                  left: 20,
                  child: KText(
                    text: 'Hawaii',
                    color: Colors.black,
                  ),
                ),
                Positioned(
                  top: 165,
                  child: Row(
                    children: [
                      Container(
                        height: 70,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15)),
                          color: HexColor('604059'),
                        ),
                        child: Center(
                          child: KText(
                            text: '4.8',
                            fontFamily: 'Lato Bold',
                            color: Colors.white,
                            fontSize: 35,
                          ),
                        ),
                      ),
                      Container(
                        height: 70,
                        width: 240,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(15)),
                          color: Colors.red.shade400,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child: KText(
                                text: '[]    []    []    []    []   []',
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child: KText(
                                text: '(512 Reviews)',
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {},
            child: Container(
              height: 50,
              width: 340,
              decoration: BoxDecoration(
                  color: Colors.greenAccent.shade700.withOpacity(.90),
                  borderRadius: BorderRadius.circular(15)),
              child: Center(
                child: KText(
                  text: 'Discover More',
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
