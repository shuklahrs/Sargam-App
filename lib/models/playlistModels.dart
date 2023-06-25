import 'package:sargam/models/songModel.dart';

class Playlist {
  final String title;
  final List<Song> song;
  final String imageUrl;

  Playlist({
    required this.title,
    required this.song,
    required this.imageUrl
});
  static List<Playlist> playlists = [
    Playlist(
        title: 'Internalional',
        song: Song.songs,
        imageUrl: 'https://images.unsplash.com/photo-1542179974-87249e6768ab?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80'),
    Playlist(
        title: 'Bollywood',
        song: Song.songs,
        imageUrl: 'https://images.unsplash.com/photo-1470225620780-dba8ba36b745?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
    Playlist(
        title: 'Punjabi Mix',
        song: Song.songs,
        imageUrl: 'https://th.bing.com/th/id/OIP.b_t8i36NbJubv6wXvVbibgEsDH?pid=ImgDet&w=650&h=433&rs=1'),

  ];
}