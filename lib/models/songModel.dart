class Song{
  final String title;
  final String description;
  final String url;
  final String coverUrl;

  Song({
   required this.title,
   required this.description,
   required this.url,
   required this.coverUrl,
  });
  static List<Song> songs = [
    Song(
        title: 'Despacito',
        description: 'Artist: Luis Fonsi,\nDaddy Yankee',
        url: 'assets/music/Despacito.mp3',
        coverUrl: 'assets/images/Despacito.jpg'
    ),
    Song(
        title: 'Dura',
        description: 'Artist: Daddy Yankee',
        url: 'assets/music/Dura.mp3',
        coverUrl: 'assets/images/Dura.jpg'
    ),
    Song(
        title: 'Faded',
        description: 'Artist: Alan Walker,\nIselin Solheim',
        url: 'assets/music/Faded.mp3',
        coverUrl: 'assets/images/Faded.jpg'
    ),
    Song(
        title: 'Liar',
        description: 'Artist: Camila Cabelo',
        url: 'assets/music/Liar.mp3',
        coverUrl: 'assets/images/Liar.jpg'
    ),
    Song(
        title: 'Senorita',
        description: 'Artist: Shawn Mendas,\nCamila Cabelo',
        url: 'assets/music/Senorita.mp3',
        coverUrl: 'assets/images/Senorita.jpg'
    ),
    Song(
        title: 'Shape of You',
        description: 'Artist: Ed Sheeran',
        url: 'assets/music/Shape of You.mp3',
        coverUrl: 'assets/images/Shape of You.jpg'
    ),
  ];
}