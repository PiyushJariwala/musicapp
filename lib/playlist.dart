import 'package:flutter/material.dart';

class PlaylistMusic extends StatefulWidget {
  const PlaylistMusic({Key? key}) : super(key: key);

  @override
  State<PlaylistMusic> createState() => _PlaylistMusicState();
}

class _PlaylistMusicState extends State<PlaylistMusic> {

  @override
  Widget build(BuildContext context) {
    dynamic data = ModalRoute.of(context)!.settings.arguments as List;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black26,
            image: DecorationImage(
                image: NetworkImage(
                  "${data[0]}",
                ),
                fit: BoxFit.cover),
          ),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.black54,
            child: Stack(
              children: [
                Container(
                  height: 250,
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Container(
                    height: 200,
                    width: 200,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        "${data[0]}",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 250),
                    height: double.infinity,
                    width: double.infinity,
                    padding: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple.shade900,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: ListView.builder(itemCount: data[2].length,itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: (){
                          List pass = [];
                          pass.addAll([data[0],data[1],data[2],data[3][index],data[4],data[5]]);
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
                                    "${data[0]}",
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
                                      Expanded(child: Align(alignment: Alignment.centerLeft,child: Text("${data[1][index]}",style: TextStyle(color: Colors.white,fontSize: 15),))),
                                      Expanded(child: Align(alignment: Alignment.centerLeft,child: Text("${data[4]}",style: TextStyle(color: Colors.grey.shade400),))),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
