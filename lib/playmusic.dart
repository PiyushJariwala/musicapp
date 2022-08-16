import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PlayMusicSystam extends StatefulWidget {
  const PlayMusicSystam({Key? key}) : super(key: key);

  @override
  State<PlayMusicSystam> createState() => _PlayMusicSystamState();
}

class _PlayMusicSystamState extends State<PlayMusicSystam> {

  AudioPlayer audioPlayer = AudioPlayer();
  int i = 0;
  bool isPlay = false;


  Duration total_duration = Duration(seconds: 0);
  Duration live_duration = Duration(seconds: 0);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    audioPlayer.onDurationChanged.listen((event) {
      setState(() {
        total_duration = event;
      });
    });

    audioPlayer.onAudioPositionChanged.listen((event) {
      setState(() {
        live_duration = event;
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    dynamic data = ModalRoute.of(context)!.settings.arguments as List;

    int m = data[5];

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
            color: Colors.black54,
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 250,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "${data[1][data[3]]}",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          width: 250,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "${data[4]}",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.more_vert_sharp,
                      color: Colors.white,
                    ),
                  ],
                ),
                Container(
                  height: 300,
                  width: 300,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      "${data[0]}",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),

                Slider(
                    min: 0.0,
                    max: total_duration.inSeconds.toDouble(),
                    value: live_duration.inSeconds.toDouble(),
                    onChanged: (value) {
                      audioPlayer.seek(Duration(seconds: value.toInt()));
                    },
                  activeColor: Colors.deepOrange,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("${live_duration.inMinutes%60}:${live_duration.inSeconds%60}",style: TextStyle(color: Colors.white),),
                    Text("${total_duration.inMinutes%60}:${total_duration.inSeconds%60}",style: TextStyle(color: Colors.white),),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        if(data[3]>0)
                        {
                          setState(() {
                            data[3]--;
                            audioPlayer.stop();
                            audioPlayer.play("${data[2][data[3]]}");
                          });
                        }
                      },
                      icon: Icon(
                        Icons.skip_previous_rounded,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 75,
                        width: 75,
                        margin: EdgeInsets.only(left: 20),
                        child: FloatingActionButton(
                          onPressed: () {
                            if (i % 2 == 0) {
                              setState(() {
                                audioPlayer.play("${data[2][data[3]]}");
                                isPlay = true;
                              });
                              i++;
                            }
                            else {
                              setState(() {
                                audioPlayer.pause();
                                isPlay = false;
                              });
                              i++;
                            }
                          },
                          child: Icon(isPlay == false ?
                          Icons.play_arrow_rounded : Icons.pause,
                            size: 50,
                          ),
                          backgroundColor: Colors.deepOrange,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 20),
                      child: IconButton(
                        onPressed: () {
                          if(data[3] < m-1)
                            {
                              setState(() {
                                data[3]++;
                                audioPlayer.stop();
                                audioPlayer.play("${data[2][data[3]]}");
                              });
                            }
                        },
                        icon: Icon(
                          Icons.skip_next_rounded,
                          color: Colors.white,
                          size: 50,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    audioPlayer.stop();
  }

}
