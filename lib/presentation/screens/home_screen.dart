import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../widgets/home_header.dart';
import '../widgets/najm_card.dart';
import 'definition_screen.dart';
import 'importance_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    final List<Widget> imagesWidgets = [
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

  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: '7mB-upPOjyM',
);

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
                      icon: Icons.question_mark,
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
                      icon: Icons.star,
                      text: 'أهمية النجم',
                      onPress: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (ctx) {
                          return ImportanceScreen();
                        }));
                      },
                    ),
                  ),
                  // Center(
                  //   child: NajmCard(
                  //     icon: Icons.back_hand,
                  //     text: 'Videos',
                  //     onPress: () {},
                  //   ),
                  // ),
                ],
              ),
            ),
            YoutubePlayer(
    controller: _controller,
    showVideoProgressIndicator: true,

),
          ],
        ),
      ),
    );
  }
}
