import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:travell_ui/src/widgets/kText.dart';

class BannerSearchBarComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 3.50),
                child: Container(
                    height: 300,
                    width: Get.width,
                    child: Image.asset(
                      'assets/img/container_1.png',
                    )),
              ),
              Positioned(
                top: 57,
                left: 60,
                child: Row(
                  children: [
                    KText(
                      text: 'Tr',
                      fontSize: 50,
                      fontFamily: 'Lato Bold',
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.add_location_alt_outlined,
                      color: Colors.white,
                      size: 35,
                    ),
                    KText(
                      text: 'vel',
                      fontSize: 50,
                      fontFamily: 'Lato Bold',
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 11,
                    ),
                    KText(
                      text: 'Guide',
                      fontSize: 50,
                      fontFamily: 'Lato Bold',
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 130,
                left: 100,
                child: KText(
                  text: 'What are you looking for?',
                  fontSize: 18,
                  color: Colors.white.withOpacity(.80),
                ),
              ),
              Positioned(
                top: 170,
                left: 35,
                child: Container(
                  height: 55,
                  width: 330,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 30,
                          spreadRadius: .50,
                        )
                      ]),
                  child: TextField(
                    textAlign: TextAlign.end,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      hintText: 'Enter your keywords',
                      hintStyle: TextStyle(
                        fontFamily: 'Lato Regular',
                      ),
                      prefixText: 'Search',
                      prefixStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lato Bold',
                        fontSize: 17,
                      ),
                      suffixIcon: Icon(
                        Icons.crop_square_outlined,
                        size: 15,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
