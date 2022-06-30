class SongModel {
  final String songName;
  final double songDuration;

  SongModel({
    required this.songName,
    required this.songDuration,
  });
}

class AlbumModel {
  final String albumPhoto;
  final String albumName;
  final String albumSinger;
  final List<SongModel> songsList;

  AlbumModel({
    required this.albumPhoto,
    required this.albumName,
    required this.albumSinger,
    required this.songsList,
  });
}
