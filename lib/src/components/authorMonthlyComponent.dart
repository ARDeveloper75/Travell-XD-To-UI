import 'package:flutter/material.dart';
import 'package:travell_ui/src/widgets/kText.dart';

class AuthorMontlyComponent extends StatelessWidget {
  final allAuthorChoice = [
    {
      'title': 'Halekulnani',
      'image': 'assets/img/author_montly_2.jpg',
      'leading': '[]    []    []    []    []',
      'review': '4.8 (512 Reviews)',
      'place': 'Hawai',
    },
    {
      'title': 'The Kahala Resort',
      'image': 'assets/img/author_montly_1.jpg',
      'leading': '[]    []    []    []    []',
      'review': '4.8 (512 Reviews)',
      'place': 'Hawai',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 8,
              ),
              child: KText(
                text: 'AUTHOR`S CHOICE MONTHLY',
                color: Colors.black,
                fontFamily: 'Lato Bold',
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              height: 350,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                primary: false,
                itemCount: allAuthorChoice.length,
                itemBuilder: (BuildContext context, int index) {
                  final item = allAuthorChoice[index];
                  return Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              '${item['image']}',
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: KText(
                            text: '${item['title']}',
                            fontSize: 18,
                            fontFamily: 'Lato Bold',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: KText(
                            text: '${item['leading']}',
                            fontSize: 13,
                            color: Colors.red.shade200,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: KText(
                            text: '${item['review']}',
                            fontSize: 13,
                            color: Colors.red.shade300,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: KText(
                            text: '${item['place']}',
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
