import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:najem/generated/l10n.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../widgets/home_header.dart';
import '../widgets/najm_card.dart';
import 'definition_screen.dart';
import 'importance_screen.dart';
import 'settings_screen.dart';

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
      // appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 1.2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (ctx) => SettingsScreen()));
                  },
                  icon: Icon(Icons.settings),
                ),
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
                SizedBox(
                  height: MediaQuery.of(context).size.height * .3,
                  child: Center(
                    child: GridView.count(
                      physics: NeverScrollableScrollPhysics(),
                      crossAxisCount: 2,
                      crossAxisSpacing: 1.0,
                      mainAxisSpacing: 2.0,
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      children: [
                        Center(
                          child: NajmCard(
                            icon: Icons.question_mark,
                            text: S.of(context).definition,
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
                            text: S.of(context).importance,
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
                ),
                YoutubePlayer(
                  controller: _controller,
                  showVideoProgressIndicator: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
