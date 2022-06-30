import 'package:flutter/material.dart';
import '../../components/app_bar.dart';
import 'components/player_options.dart';
import 'components/simmilar_albums.dart';

class NowPlayingScreen extends StatelessWidget {
  const NowPlayingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBar(title: 'Now Playing'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: SimmilarAlbums(),
          ),
          Expanded(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(60, 25, 25, 25),
                      child: Image.asset('assets/pictures/music_player.png'),
                    ),
                  ),
                  const Text(
                    'Wind of Change',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Scorpions',
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(height: 25),
                ],
              ),
            ),
          ),
          const PlayerOptions(),
        ],
      ),
    );
  }
}
