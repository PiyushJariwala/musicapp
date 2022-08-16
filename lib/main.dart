import 'package:flutter/material.dart';
import 'package:musicapp/SplashScreenPage.dart';
import 'package:musicapp/music.dart';
import 'package:musicapp/playlist.dart';
import 'package:musicapp/playmusic.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=> SplashScreenPage(),
        '/myscreen':(context)=>MusicAppHome(),
        '/playlistmusic':(context)=>PlaylistMusic(),
        '/playmusic':(context)=>PlayMusicSystam(),
      },
    ),
  );
}
