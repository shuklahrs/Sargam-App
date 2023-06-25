import 'package:flutter/material.dart';
import 'package:sargam/models/playlistModels.dart';
import 'package:sargam/models/songModel.dart';
import 'package:sargam/widgets/playlistCard.dart';
import 'package:sargam/widgets/sectionHeader.dart';
import 'package:sargam/widgets/songCard.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Song> songs = Song.songs;
    List<Playlist> playlists = Playlist.playlists;
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.teal.shade800.withOpacity(0.8),
              Colors.deepPurple.shade400.withOpacity(0.8)
            ]
          )
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: const _CustomAppBar(),
          bottomNavigationBar: const _CustomNavBar(),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const _DiscoverMusic(),
                SizedBox(height: 10,),
                _TrendingMusic(songs: songs),
                SizedBox(height: 20,),
                _PlaylistMusic(playlists: playlists)
              ],
            ),
          ),
        ));
  }
}

class _PlaylistMusic extends StatelessWidget {
  const _PlaylistMusic({
    Key? key,
    required this.playlists,
  }) : super(key: key);

  final List<Playlist> playlists;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const SectionHeader(title: 'Playlists'),
          SizedBox(height: 10,),
          ListView.builder(
            shrinkWrap: true,
              padding: const EdgeInsets.only(top: 20),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: playlists.length,
              itemBuilder: (context, index) {
                return PlaylistCard(playlist: playlists[index]);
              })
        ],
      ),
    );
  }
}

class _TrendingMusic extends StatelessWidget {
  const _TrendingMusic({
    Key? key,
    required this.songs,
  }) : super(key: key);

  final List<Song> songs;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20, left: 20),
      child: Column(
        children: [
         const Padding(
              padding: EdgeInsets.only(right: 20),
              child: SectionHeader(title: "Trending Music")),
          SizedBox(height: 20,),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.27,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: songs.length,
                itemBuilder: (context, index){
                  return SongCard(song: songs[index]);
                }
                ),
          )
        ],
      ),
    );
  }
}


class _DiscoverMusic extends StatelessWidget {
  const _DiscoverMusic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Welcome",
        style: Theme.of(context).textTheme.bodyLarge,),

        SizedBox(height: 10),
        Text("Enjoy Your Favorite Music",
        style: Theme.of(context).textTheme.headline6!.copyWith(fontWeight: FontWeight.w800)),
        SizedBox(height: 20,),
        TextFormField(
          decoration: InputDecoration(
            isDense: true,
            filled: true,
            fillColor: Colors.white,
            hintText: 'Search',
            hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.black45.withOpacity(0.5), fontSize: 18),
            prefixIcon: Icon(Icons.search, color: Colors.black45,size: 30,),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,
            )
          ),
        )
      ],
    ),);
  }
}

class _CustomNavBar extends StatelessWidget {
  const _CustomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.deepPurple.shade800,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border),label: 'Favorite'),
          BottomNavigationBarItem(icon: Icon(Icons.play_circle_outline),label: 'Play'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
        ]);
  }
}
class _CustomAppBar extends StatelessWidget with PreferredSizeWidget{
  const _CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: const Icon(Icons.grid_view_rounded),
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 20.0),
          child: const CircleAvatar(
            backgroundImage: NetworkImage('https://images.unsplash.com/photo-1560343776-97e7d202ff0e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1935&q=80'),
          ),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(56.0);

}

