import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sargam/models/playlistModels.dart';

class PlaylistCard extends StatelessWidget {
  const PlaylistCard({
    Key? key,
    required this.playlist,
  }) : super(key: key);

  final Playlist playlist;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed('/playlist', arguments: playlist);
      },
      child: Container(
        height: 80.0,
        margin: EdgeInsets.only(bottom: 15),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: Colors.teal.shade700.withOpacity(0.9),
            borderRadius: BorderRadius.circular(20)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(playlist.imageUrl,
                height: 50,
                width: 50,
                fit: BoxFit.cover,),
            ),
            SizedBox(width: 15,),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(playlist.title,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white)),
                  Text('${playlist.song.length} songs',
                      maxLines: 2,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.bold, fontSize: 14,color: Colors.white)),
                ],
              ),
            ),
            IconButton(
                onPressed: () { },
                icon: Icon(Icons.play_circle, color: Colors.white,size: 40,))
          ],
        ),
      ),
    );
  }
}
