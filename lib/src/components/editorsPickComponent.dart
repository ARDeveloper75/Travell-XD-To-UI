import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:travell_ui/src/widgets/kText.dart';

class EditorsPickComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final allEditorPic = [
      {
        'title': 'Kaptai Lake',
        'image': 'assets/img/editor_1.jpg',
        'leading': '[]    []    []    []    []',
        'review': '4.8 (512 Reviews)',
        'place': 'Hawai',
      },
      {
        'title': 'Tourist',
        'image': 'assets/img/editor_3.jpg',
        'leading': '[]    []    []    []   []',
        'review': '4.8 (512 Reviews)',
        'place': 'Hawai',
      },
      {
        'title': 'Sajek Valley',
        'image': 'assets/img/editor_2.jpg',
        'leading': '[]    []    []    []   []',
        'review': '4.8 (512 Reviews)',
        'place': 'Hawai',
      },
    ];
    return Container(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: KText(
                text: 'EDITOR`S PICKS',
                color: Colors.black,
                fontFamily: 'Lato Bold',
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 350,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                primary: false,
                itemCount: allEditorPic.length,
                itemBuilder: (BuildContext context, int index) {
                  final item = allEditorPic[index];
                  return Padding(
                    padding: EdgeInsets.only(left: 30.0, right: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 250,
                              width: 140,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.greenAccent,
                              ),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(14)),
                                child: Image.asset(
                                  '${item['image']}',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 45,
                              left: 20,
                              child: Container(
                                height: 90,
                                width: 170,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color:
                                          HexColor('0CA47F').withOpacity(.50),
                                      spreadRadius: 30,
                                      blurRadius: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 20,
                              left: 10,
                              child: KText(
                                text: '${item['title']}',
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'Lato Regular',
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(6.0),
                          child: KText(
                            text: '${item['leading']}',
                            fontSize: 16,
                            color: Colors.red.shade300,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(6.0),
                          child: KText(
                            text: '${item['review']}',
                            fontSize: 13,
                            color: Colors.red.shade200,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(6.0),
                          child: KText(
                            text: '${item['place']}',
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
