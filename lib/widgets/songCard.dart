import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sargam/models/songModel.dart';

class SongCard extends StatelessWidget {
  const SongCard({
    Key? key,
    required this.song,
  }) : super(key: key);

  final Song song;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed('/song', arguments: song);
      },
      child: Container(
        margin: const EdgeInsets.only(right: 15),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
            width: MediaQuery.of(context).size.width * 0.45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                image: AssetImage(song.coverUrl),
                fit: BoxFit.fill,
              ),
            ),
          ),
            Container(
              height: 70,
              width: MediaQuery.of(context).size.width * 0.4,
              margin: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white.withOpacity(0.9)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(song.title,
                          style: Theme.of(context).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.bold, fontSize: 22,color: Colors.deepPurple.shade900)),
                      Text(song.description,
                          style: Theme.of(context).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.teal.shade900)),
                    ],
                  ),
                  Icon(Icons.play_circle, color: Colors.deepPurple,)
                ],
              ),
            ),
        ],
        ),
      ),
    );
  }
}