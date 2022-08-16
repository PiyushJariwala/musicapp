import 'package:flutter/material.dart';

class ArtistsMusic extends StatefulWidget {
  const ArtistsMusic({Key? key}) : super(key: key);

  @override
  State<ArtistsMusic> createState() => _ArtistsMusicState();
}

class _ArtistsMusicState extends State<ArtistsMusic> {

  List Artistimg = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAhRoCfFxq3Ub4vggiTaSQ4OHjhP_jiFhmtUSox1gEAiMZL5VW4Oeg4JQFFrK54kCPFhI&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcST52WxLV2VYJzaY_ZtMDRhHNSNiUDkkoZZdkeCMtu2z0qJ5PFlDFIU1EDm2y0WD38WvWk&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBYk8SK18woqRx8TICXgBcbKdLFVUzZPHzCmp1qqvxR_lQHwExvUiyIrRI3mNJx7KP_fU&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiedLyMzx9wOLQd9w9xSwGoQPxxgZ_d4kZq-y43XWqC_e9uwtM2zZuRfOM5ivkbfPJDAM&usqp=CAU",
    "https://rollingstoneindia.com/wp-content/uploads/2020/08/Shreya-Ghoshal-960x852.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQALJ8SUDepd7s7VvTSaZ-TtQ3DxfYosVCfe4R4uQ8teNuDzIau7RCnZuC8khr2V4YErV8&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQc-_PMiAkadWdCB7sd0CrOco08fp9boetUwHNOpDUigPPyfKUgePTk9Cs1uP-WAlNO7GE&usqp=CAU",
    "https://img.mensxp.com/media/content/2021/Aug/Case-Filed-Against-Yo-Yo-Honey-Singh-Domestic-Violence-Charges-By-Wife-Shalini-Talwar-1400x653_610a1a8596573.jpeg",
  ];

  List nameart = [
    "Lata Managshker",
    "Mahammad Rafi",
    "Arijit Singh",
    "A R Rahman",
    "Shreya Ghoshal",
    "Nusrat fateh ali khan",
    "sonu nigam",
    "honey singh",
  ];

  List LataSong = [
    "https://pwdown.com/110878/02.%20Ajeeb%20Daastan%20Hai%20Yeh.mp3",
    "https://pwdown.com/12804/Humko%20Humise%20Chura%20Lo%20-%20Shahrukh%20Khan.mp3",
    "https://pwdown.com/113237/03.%20Lag%20Ja%20Gale%20Se.mp3",
    "https://pwdown.com/110891/05.%20Jiya%20Jale%20Jaan%20Jale.mp3",
    "https://pwdown.com/112158/02.%20Pyaar%20Kiya%20To%20Darna%20Kiya.mp3",
    "https://pwdown.com/112896/01.%20Dekha%20Ek%20Khawab.mp3",
    "https://pwdown.com/112607/05.%20Lukka%20Chuppi.mp3",
    ];

  List LataSongName =[
    "Ajeeb Daastan Hai Yeh",
    "Humko Humise Chura Lo ",
    "Lag Ja Gale Se",
    "Jiya Jale",
    "Pyar Kiya To Darna Kya",
    "Dekha Ek Khawab",
    "Luka Chuppi",
  ];

  List n1 = [0,1,2,3,4,5,6];

  List MahammadSong = [
    "https://pwdown.com/14654/Gulabi%20Ankhen%20-%20The%20Train.mp3",
    "https://pwdown.com/113034/04.%20O%20Haseena%20Zulfon%20Wali%20Jaane%20Jahan.mp3",
    "https://pwdown.com/110099/06.%20Maine%20Poochha%20Chand%20Se.mp3",
    "https://pwdown.com/111306/01.%20Kya%20Hua%20Tera%20Wada.mp3",
    "https://pwdown.com/111684/08.%20Taarif%20Karu%20Kya%20Uski%20Jis%20Ne%20Tumhein%20Banaya.mp3",
    "https://pwdown.com/111233/03.%20Yeh%20Duniya%20Yeh%20Mehfil%20-%20Mohammed%20Rafi.mp3",
  ];

  List MohammadSongName = [
    "Gulabi Ankhen",
    "O Haseena Zulfonwale Jane Jahan",
    "Maine Poochha Chand Se",
    "Kya Hua Tera Vada",
    "Taarif Karoon Kya Uski",
    "Yeh Duniya Yeh Mehfil",
  ];

  List n2 =[0,1,2,3,4,5];

  List arjitSingSong = [
    "https://pwdown.com/9990/03%20Tum%20Saath%20Ho%20-%20Tamasha%20(Arijit%20Singh)%20320Kbps.mp3",
    "https://pwdown.com/14367/Tera%20Yaar%20Hoon%20Main%20-%20Sonu%20Ke%20Titu%20Ki%20Sweety.mp3",
    "https://pwdown.com/9478/02%20Samjhawan%20-%20Humpty%20Sharma%20Ki%20Dulhania.mp3",
    "https://pwdown.com/14376/Galti%20Se%20Mistake%20-%20Jagga%20Jasoos.mp3",
    "https://pwdown.com/14683/Kalank%20-%20Bonus%20Track.mp3",
  ];

  List arjitSongName =[
    "Agar Tum Saath Ho",
    "Tera Yaar Hoon Main",
    "Samjhawan",
    "Galti Se Mistake",
    "Kalank - Title Track",
  ];

  List n3 = [0,1,2,3,4];

  List ArSong = [
    "https://pwdown.com/112646/04.%20Kun%20Faya%20Kun.mp3",
    "https://pwdown.com/111944/06.%20Maa%20Tujhhe%20Salaam.mp3",
    "https://pwdown.com/12804/Chaiyya%20Chaiyya%20-%20Shahrukh%20Khan.mp3",
    "https://pwdown.com/8047/Tum%20Tak.mp3",
    "https://pwdown.com/8047/Title%20Track.mp3",
    "https://pwdown.com/112607/05.%20Lukka%20Chuppi.mp3",
  ];

  List arSongName = [
    "Kun Faya Kun",
    "Maa Tujhe Salaam",
    "Chaiyya Chaiyya",
    "Tum Tak",
    "Raanjhanaa",
    "Luka Chuppi",
  ];

  List n4 = [0,1,2,3,4,5];

  List shareyaSong = [
    "https://pwdown.com/112883/01.%20Saibo.mp3",
    "https://pwdown.com/113319/01.%20Agar%20Tum%20Miljao%20-%20Female.mp3",
    "https://pwdown.com/111596/06.%20Jadu%20Hai%20Nasha%20Hai%20-%20Female.mp3",
    "https://pwdown.com/112312/04.%20Main%20Agar%20Kahoon.mp3",
  ];

  List shareyaSongName = [
    "Saibo",
    "Agar Tum Mil Jao",
    "Jaadu Hai Nasha",
    "Main Agar Kahoon",
  ];

  List n5 = [0,1,2,3];

  List nusratSong =[
    "https://pwdown.com/11989/Mere%20Rashke%20Qamar%20-%20Remix%20-%20Nusrat%20Fateh%20190Kbps.mp3",
    "https://pwdown.com/8888/Dulhe%20Ka%20Sehra%20(Hip%20Hop%20Style)%20The%20Legend.mp3",
    "https://cdn.pagalworld.us/songs/old/iwal-tere%20bin%20nahin%20lagda.mp3",
    "https://pwdown.com/8991/Piya%20Re%20(Shrey%20Singhal)%20Tribute%20To%20Nusrat%20Fateh.mp3",
    "https://pwdown.com/113603/Na%20Chedo%20Hume%20Hum%20Sataye%20Dj%20Remix%20Reels.mp3",
  ];

  List nusratSongName = [
    "Mere Rashke Qamar",
    "Dulhe Ka Sehra",
    "Tere Bin Nahin Lagda",
    "Piya Re",
    "Na Chedo Hume Hum Satay",
  ];

  List n6 = [0,1,2,3,4];

  List sonunigam=[
    "https://pwdown.com/112312/04.%20Main%20Agar%20Kahoon.mp3",
    "https://pwdown.com/111975/05.%20Tumese%20Milke%20Dilka%20Jo%20Haal.mp3",
    "https://pwdown.com/12513/Sandese%20Aate%20Hain%20-%20Border.mp3",
    "https://pwdown.com/12804/Kal%20Ho%20Naa%20Ho%20-%20Shahrukh%20Khan.mp3",
  ];

  List sonuSong =[
    "Main Agar Kahoon",
    "Tumse Milke Dil Ka",
    "Sandese Aate Hai",
    "Kal Ho Naa Ho",
  ];

   List n7 = [0,1,2,3];

  List honey = [
    "https://pwdown.com/8565/03%20Sunny%20Sunny%20-%20Yaariyan%20[PagalWorld.com].mp3",
    "https://pwdown.com/8555/Dheere%20Dheere%20(Yo%20Yo%20Honey%20Singh)%20-%20320Kbps.mp3",
    "https://pwdown.com/8289/Blue%20Eyes%20Yo%20Yo%20Honey%20Singh%20(PagalWorld.com)%20-%20320Kbps%20.mp3",
    "https://pwdown.com/8289/01%20Lungi%20Dance%20-%20Yo%20Yo%20Honey%20Singh%20(PagalWorld.com)-%20320Kbps.mp3",
  ];

  List honeySong = [
    "Sunny Sunny",
    "Dheere Dheere",
    "Blue Eyes",
    "Lungi Dance",
  ];

  List n8 = [0,1,2,3];


  List albummusic = [];
  List SongNameAlbume =[];

  List n = [];

  List t = [7,6,5,6,4,5,3,3];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    albummusic = [
      LataSong,
      MahammadSong,
      arjitSingSong,
      ArSong,
      shareyaSong,
      nusratSong,
      sonunigam,
      honey,
    ];

    n=[
      n1,
      n2,
      n3,
      n4,
      n5,
      n6,
      n7,
      n8,
    ];

    SongNameAlbume = [
      LataSongName,
      MohammadSongName,
      arjitSongName,
      arSongName,
      shareyaSongName,
      nusratSongName,
      sonuSong,
      honeySong,
    ];

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.deepPurple.shade900,
        child: GridView.builder(itemCount: nameart.length,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: (){
                  List pass= [];
                  pass.addAll([Artistimg[index],SongNameAlbume[index],albummusic[index],n[index],nameart[index],t[index]]);
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

                      Text("${nameart[index]}",style: TextStyle(color: Colors.white),)
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
