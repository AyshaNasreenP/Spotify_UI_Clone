import 'package:flutter/material.dart';
import 'package:flutterspotify/songs.dart';

import 'correction.dart';
import 'home.dart';
import 'navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Spotify',

      home: Botnavi()
    );

  }
}


