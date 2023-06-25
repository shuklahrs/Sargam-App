import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sargam/screens/homePage.dart';
import 'package:sargam/screens/playlistPage.dart';
import 'package:sargam/screens/songsPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Sargam',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
              displayColor: Colors.white
          ),primarySwatch: Colors.teal,
      ),
      home: const HomePage(),
      getPages: [
        GetPage(name: '/', page: () => const HomePage()),
        GetPage(name: '/song', page:() => const SongPage()),
        GetPage(name: '/playlist', page:() => const PlaylistPage())
      ],
    );
  }
}
