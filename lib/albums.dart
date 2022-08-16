import 'package:flutter/material.dart';

class AlbumMusic extends StatefulWidget {
  const AlbumMusic({Key? key}) : super(key: key);

  @override
  State<AlbumMusic> createState() => _AlbumMusicState();
}

class _AlbumMusicState extends State<AlbumMusic> {
  List Artistimg = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT65BMOEgtJCzFplYhdLbg8p5w8tXE4i6XQ1pUtaiKdKzeSCwgI4QWirLr_ozbld0dgGFA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS18YjTMZAgvneiY2k0Ak5J7VQs2nsrMZRki3Av9azJsvs7IAjJ49GX5lEKAVytoZKRvSU&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKdSZbJSSQTTYXC6XexkHOwXRDNAx5yuDZ8T8glJrOJxz2mL8SlmAVmGxk8_wl-aMAJEk&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVHX_j_JlRm223xLfYulvZllpAbO-MGTFss8lnwZ_hJWiqQiMbHG7Dn5H5LdU-3xdVPg0&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRB2J23esPxgLFbQZLGkebhFETUPqZUS6N8wyFkFhaazh_tCkXApFkc2Nj6hlkVSLKYY7Y&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeqomQWeO4Q5XhUrZIV5MNk8L0mLOekp4Df8cKK5UhZnra3aEQHPR_5mC-q9WxXnNH1kA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSx3-RFJEJBMHw7Xl2rDb5mhVqBumcj_fvFaYTUM9oAqpTtw48oFVwCZ2gW4rrAbykaF2U&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvlxLmtemdrwdYgjeN_oNAoNcKNOFB_8r5qRV0ybvm0bw9a9QfpR8IUCck4SHL5NSXrik&usqp=CAU",
  ];

  List nameart = [
    "pushpa",
    "RRR",
    "kgf chapter 2",
    "attack",
    "bachchan pandey",
    "gangubai kathiawadi",
    "radhe shyam",
    "shershaah",
  ];


  List pushpa = [
    "https://pwdown.com/113563/Oo%20Bolega%20Ya%20Oo%20Oo%20Bolega%20-%20Pushpa.mp3",
    "https://pwdown.com/113563/Srivalli%20-%20Pushpa.mp3",
    "https://pwdown.com/113563/Saami%20Saami%20Hindi%20-%20Pushpa.mp3",
  ];

  List pushpaSong =[
    "Oo Bolega Ya Oo Oo Bolega - Pushpa.mp3",
    "Srivalli - Pushpa",
    "Saami Saami Hindi - Pushpa",
  ];

  List rrr = [
    "https://pwdown.com/113560/Naacho%20Naacho%20-%20RRR.mp3",
    "https://pwdown.com/113560/Dosti%20-%20RRR.mp3",
    "https://pwdown.com/113560/Janani%20-%20Rrr.mp3",
  ];

  List rrrSong = [
    "Naacho Naacho - RRR",
    "Dosti - RRR.mp3",
    "Janani - Rrr.mp3",
  ];

  List KGF = [
    "https://pwdown.com/113622/Toofan%20-%20KGF%20Chapter%202.mp3",
    "https://pwdown.com/14633/Gali%20Gali%20-%20KGF.mp3",
    "https://pwdown.com/113622/Toofan%20-%20KGF%20Chapter%202.mp3",
  ];

  List kgfSong =[
    "Toofan - KGF Chapter 2.mp3",
    "Gali Gali - KGF.mp3",
    "Toofan - KGF Chapter 2.mp3",
  ];

  List attak = [
    "https://pwdown.com/113619/Ik%20Tu%20Hai%20-%20Jubin%20Nautiyal.mp3",
    "https://pwdown.com/113619/Mai%20Nai%20Tuttna%20-%20Vishal%20Mishra.mp3",
    "https://pwdown.com/113619/Durga%20Gayatri%20Mantra%20-%20Attack.mp3",
  ];

  List attakSong = [
    "Ik Tu Hai - Jubin Nautiyal.mp3",
    "Mai Nai Tuttna - Vishal Mishra.mp3",
    "Durga Gayatri Mantra - Attack.mp3",
  ];

  List bachanpandy = [
    "https://pwdown.com/113617/Heer%20Raanjhana%20-%20Arijit%20Singh.mp3",
    "https://pwdown.com/113617/Saare%20Bolo%20Bewafa%20-%20Bachchhan%20Paandey.mp3",
    "https://pwdown.com/113617/Meri%20Jaan%20Meri%20Jaan%20-%20Bachchhan%20Paandey.mp3",
  ];

  List bachanPandeySong = [
    "Heer Raanjhana - Arijit Singh.mp3",
    "Saare Bolo Bewafa - Bachchhan Paandey.mp3",
    "Meri Jaan Meri Jaan - Bachchhan Paandey.mp3",
  ];

  List gb=[
    "https://pwdown.com/113612/Muskurahat%20-%20Arijit%20Singh.mp3",
    "https://pwdown.com/113612/Dholida%20-%20Gangubai%20Kathiawadi.mp3",
    "https://pwdown.com/113612/Meri%20Jaan%20-%20Gangubai.mp3",
  ];

  List gbSong = [
    "Muskurahat - Arijit Singh.mp3",
    "Dholida - Gangubai Kathiawadi.mp3",
    "Meri Jaan - Gangubai.mp3",
  ];

  List rs=[
    "https://pwdown.com/113598/Aashiqui%20Aa%20Gayi%20-%20Radhe%20Shyam.mp3",
    "https://pwdown.com/113598/Soch%20Liya%20-%20Radhe%20Shyam.mp3",
    "https://pwdown.com/113598/Jaan%20Hai%20Meri%20-%20Radhe%20Shyam.mp3",
  ];

  List rsSong =[
    "Aashiqui Aa Gayi - Radhe Shyam.mp3",
    "Soch Liya - Radhe Shyam.mp3",
    "Jaan Hai Meri - Radhe Shyam.mp3",
  ];

  List shersha = [
    "https://pwdown.com/113558/Ranjha%20-%20Shershaah.mp3",
    "https://pwdown.com/113558/Mann%20Bharryaa%202%20-%20Shershaah.mp3",
    "https://pwdown.com/113558/Raataan%20Lambiyan%20-%20Shershaah.mp3",
  ];

  List shersahaSong = [
    "Ranjha - Shershaah.mp3",
    "Mann Bharryaa 2 - Shershaah.mp3",
    "Raataan Lambiyan - Shershaah.mp3",
  ];


  List albummusic = [];
  List SongNameAlbume =[];

  List n = [0,1,2];

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    albummusic = [
      pushpa,
      rrr,
      KGF,
      attak,
      bachanpandy,
      gb,
      rs,
      shersha,
    ];

    SongNameAlbume = [
      pushpaSong,
      rrrSong,
      kgfSong,
      attakSong,
      bachanPandeySong,
      gbSong,
      rsSong,
      shersahaSong,
    ];

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.deepPurple.shade800,
        child: GridView.builder(
            itemCount: nameart.length,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: (){
                  List pass= [];
                  pass.addAll([Artistimg[index],SongNameAlbume[index],albummusic[index],n,nameart[index],3]);
                  Navigator.pushNamed(context, '/playlistmusic',arguments: pass);
                },
                child: Container(
                  height: 200,
                  width: 200,
                  margin: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            "${Artistimg[index]}",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Text(
                        "${nameart[index]}",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
