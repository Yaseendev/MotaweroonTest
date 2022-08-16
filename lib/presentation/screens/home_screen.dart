import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../widgets/home_header.dart';
import '../widgets/najm_card.dart';
import 'definition_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static List<Widget> imagesWidgets = [
    Container(
      //  margin: EdgeInsets.all(5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child: Image.asset(
          'assets/s1.jpeg', fit: BoxFit.cover, //width: 200.0
        ),
      ),
    ),
    Container(
      //margin: EdgeInsets.all(5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child: Image.asset(
          'assets/s2.jpeg', fit: BoxFit.cover, // width: 200.0,
        ),
      ),
    ),
    Container(
      // margin: EdgeInsets.all(5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child: Image.asset(
          'assets/s3.jpeg', fit: BoxFit.cover,
          //width: 200.0,
        ),
      ),
    ),
    Container(
      //margin: EdgeInsets.all(5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child: Image.asset(
          'assets/s4.jpeg', fit: BoxFit.cover,
          //width: 200.0,
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HomeHeader(),
            SizedBox(height: 20),
            CarouselSlider(
              items: imagesWidgets,
              options: CarouselOptions(
                aspectRatio: 2.0,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
                autoPlay: true,
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 2.0,
                mainAxisSpacing: 4.0,
                children: [
                  Center(
                    child: NajmCard(
                      icon: Icons.back_hand,
                      text: 'Defenition',
                      onPress: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (ctx) {
                          return DefinitionScreen();
                        }));
                      },
                    ),
                  ),
                  Center(
                    child: NajmCard(
                      icon: Icons.back_hand,
                      text: 'Defenition',
                      onPress: () {},
                    ),
                  ),
                  Center(
                    child: NajmCard(
                      icon: Icons.back_hand,
                      text: 'Defenition',
                      onPress: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
