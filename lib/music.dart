import 'package:flutter/material.dart';
import 'package:musicapp/albums.dart';
import 'package:musicapp/allsongs.dart';
import 'package:musicapp/artists.dart';
import 'package:musicapp/toptrending.dart';

class MusicAppHome extends StatefulWidget {
  const MusicAppHome({Key? key}) : super(key: key);

  @override
  State<MusicAppHome> createState() => _MusicAppHomeState();
}

class _MusicAppHomeState extends State<MusicAppHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepPurple.shade800,
            centerTitle: true,
            title: Text("Music Masti"),
            actions: [Icon(Icons.search)],
            bottom: TabBar(
              tabs: [
                Tab(text: "Artist"),
                Tab(text: "Albums"),
                Tab(text: "Top tranding"),
                Tab(text: "All Songs"),
              ],
              isScrollable: true,
              indicatorColor: Colors.white,
            ),
          ),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.deepPurple.shade800,
            child: TabBarView(
              children: [
                ArtistsMusic(),
                AlbumMusic(),
                TopTrendingMusic(),
                AllSongsMusic(),
              ],
            ),
          ),
          drawer: Drawer(
            child: Container(
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
