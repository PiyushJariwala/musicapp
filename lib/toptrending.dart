import 'package:flutter/material.dart';

class TopTrendingMusic extends StatefulWidget {
  const TopTrendingMusic({Key? key}) : super(key: key);

  @override
  State<TopTrendingMusic> createState() => _TopTrendingMusicState();
}

class _TopTrendingMusicState extends State<TopTrendingMusic> {

  List Artistimg = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS18YjTMZAgvneiY2k0Ak5J7VQs2nsrMZRki3Av9azJsvs7IAjJ49GX5lEKAVytoZKRvSU&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKdSZbJSSQTTYXC6XexkHOwXRDNAx5yuDZ8T8glJrOJxz2mL8SlmAVmGxk8_wl-aMAJEk&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVHX_j_JlRm223xLfYulvZllpAbO-MGTFss8lnwZ_hJWiqQiMbHG7Dn5H5LdU-3xdVPg0&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRB2J23esPxgLFbQZLGkebhFETUPqZUS6N8wyFkFhaazh_tCkXApFkc2Nj6hlkVSLKYY7Y&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeqomQWeO4Q5XhUrZIV5MNk8L0mLOekp4Df8cKK5UhZnra3aEQHPR_5mC-q9WxXnNH1kA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSx3-RFJEJBMHw7Xl2rDb5mhVqBumcj_fvFaYTUM9oAqpTtw48oFVwCZ2gW4rrAbykaF2U&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvlxLmtemdrwdYgjeN_oNAoNcKNOFB_8r5qRV0ybvm0bw9a9QfpR8IUCck4SHL5NSXrik&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT65BMOEgtJCzFplYhdLbg8p5w8tXE4i6XQ1pUtaiKdKzeSCwgI4QWirLr_ozbld0dgGFA&usqp=CAU",
  ];

  List nameart = [
    "RRR",
    "kgf chapter 2",
    "attack",
    "bachchan pandey",
    "gangubai kathiawadi",
    "radhe shyam",
    "shershaah",
    "pushpa",
  ];


  List Song_list = [
    "Ranjha - Shershaah",
    "Oo Bolega Ya Oo Oo Bolega - Pushpa",
    "Srivalli - Pushpa",
    "Tum Saath Ho - Tamasha (Arijit Singh)",
    " Atak Gaya - Arijit Singh",
    "Doobey - Gehraiyaan",
    "Ajib Dastan Hai Yeh - Dil Apna Aur Preet Parai (1960)",
    "Lag Ja Gale Ki Phir Ye",
  ];

  List n = [0,1,2,3,4,5,6,7];

  List Song_address=[
    "https://pwdown.com/113558/Ranjha%20-%20Shershaah.mp3",
    "https://pwdown.com/113563/Oo%20Bolega%20Ya%20Oo%20Oo%20Bolega%20-%20Pushpa.mp3",
    "https://pwdown.com/113563/Srivalli%20-%20Pushpa.mp",
    "https://pwdown.com/9990/03%20Tum%20Saath%20Ho%20-%20Tamasha%20(Arijit%20Singh)%20320Kbps.mp3",
    "https://pwdown.com/113611/Atak%20Gaya%20-%20Arijit%20Singh.mp3",
    "https://pwdown.com/113610/Doobey%20-%20Gehraiyaan.mp3",
    "https://pagalsong.in/uploads/systemuploads/mp3/Dil%20Apna%20Aur%20Preet%20Parai/Ajib%20Dastan%20Hai%20Yeh.mp3",
    "https://pwdown.com/113237/03.%20Lag%20Ja%20Gale%20Se.mp3",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.blue.shade900,
          child: ListView.builder(itemCount: Song_list.length,itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
                List pass = [];
                pass.addAll([Artistimg[index],Song_list,Song_address,n[index],nameart[index],8]);
                Navigator.pushNamed(context, '/playmusic',arguments: pass);
              },
              child: Container(
                margin: EdgeInsets.all(2),
                height: 75,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      margin: EdgeInsets.only(left: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          "${Artistimg[index]}",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Align(alignment: Alignment.centerLeft,child: Text("${Song_list[index]}",style: TextStyle(color: Colors.white,fontSize: 15),)),
                            Align(alignment: Alignment.centerLeft,child: Text("${nameart[index]}",style: TextStyle(color: Colors.grey.shade800),)),
                          ],
                        ),
                      ),
                    ),
                    Icon(
                      Icons.more_vert_sharp,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            );
          })),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.shuffle,),backgroundColor: Colors.deepPurple,),
    );
  }
}
