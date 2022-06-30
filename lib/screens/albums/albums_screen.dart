import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_player_ui/app/app.dart';
import 'package:music_player_ui/components/app_bar.dart';
import 'package:music_player_ui/dummy_data.dart';

class AlbumsScreen extends StatefulWidget {
  const AlbumsScreen({Key? key}) : super(key: key);

  @override
  State<AlbumsScreen> createState() => _AlbumsScreenState();
}

class _AlbumsScreenState extends State<AlbumsScreen> {
  PageController albumsController = PageController(
    viewportFraction: 0.5,
  );

  int currentAlbum = 0;
  int currentSong = 0;

  @override
  void dispose() {
    albumsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBar(title: 'Albums'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 200,
            child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  currentAlbum = value;
                  currentSong = 0;
                });
              },
              controller: albumsController,
              itemCount: albumsList.length,
              itemBuilder: (context, index) {
                final album = albumsList[index];

                return Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: currentAlbum == index ? 0 : 25,
                    horizontal: 5,
                  ),
                  child: Image.asset(album.albumPhoto),
                );
              },
            ),
          ),
          const SizedBox(height: 10),
          Text(
            albumsList[currentAlbum].albumName,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),
          Text(albumsList[currentAlbum].albumSinger),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Scrollbar(
                thumbVisibility: true,
                child: ListView.builder(
                  itemCount: albumsList[currentAlbum].songsList.length,
                  itemBuilder: (context, index) {
                    final song = albumsList[currentAlbum].songsList[index];

                    return InkWell(
                      onTap: () {
                        setState(() {
                          currentSong = index;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 12, 15, 12),
                        child: Row(
                          children: [
                            if (currentSong == index)
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: SvgPicture.asset(
                                  'assets/svg/speaker.svg',
                                  height: 18,
                                  width: 18,
                                  color: AppColors.color2,
                                ),
                              ),
                            Text(
                              song.songName,
                              style: currentSong == index
                                  ? const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    )
                                  : const TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey,
                                    ),
                            ),
                            const Spacer(),
                            Text(
                              song.songDuration
                                  .toStringAsFixed(2)
                                  .replaceAll('.', ':'),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
