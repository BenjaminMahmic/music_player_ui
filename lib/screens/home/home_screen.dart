import 'package:flutter/material.dart';
import 'package:music_player_ui/app/app.dart';
import 'package:music_player_ui/screens/albums/albums_screen.dart';
import 'package:music_player_ui/screens/default/default_screen.dart';
import 'package:music_player_ui/screens/now_playing/now_playing_screen.dart';

import 'components/bottom_nav_bar_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 1;

  List<Widget> screens = [
    const DefaultScreen('Play Lists'),
    const AlbumsScreen(),
    const NowPlayingScreen(),
    const DefaultScreen('Radio'),
    const DefaultScreen('Settings'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        fixedColor: AppColors.color2,
        items: [
          appBotNavBarItem(
            svgPic: 'assets/svg/playlist.svg',
            label: 'Play Lists',
            currentIndex: currentIndex,
            itemValue: 0,
          ),
          appBotNavBarItem(
            svgPic: 'assets/svg/album.svg',
            label: 'Albums',
            currentIndex: currentIndex,
            itemValue: 1,
          ),
          appBotNavBarItem(
            svgPic: 'assets/svg/note.svg',
            label: 'Now Playing',
            currentIndex: currentIndex,
            itemValue: 2,
          ),
          appBotNavBarItem(
            svgPic: 'assets/svg/radio.svg',
            label: 'Radio',
            currentIndex: currentIndex,
            itemValue: 3,
          ),
          appBotNavBarItem(
            svgPic: 'assets/svg/settings.svg',
            label: 'Settings',
            currentIndex: currentIndex,
            itemValue: 4,
          ),
        ],
      ),
    );
  }
}
