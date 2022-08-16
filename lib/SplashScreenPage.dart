import 'package:flutter/material.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    _navigator();
    super.initState();
  }

  void _navigator()
  async{
    await Future.delayed(Duration(seconds: 2),);
    Navigator.pushReplacementNamed(context, '/myscreen');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.deepPurple.shade900,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Icon(Icons.headset,size: 200,color: Colors.purple.shade300,),),
            Text("Music Masti",style: TextStyle(color: Colors.purple.shade300,fontSize: 30,letterSpacing: 2,fontWeight: FontWeight.bold),),
          ],
        )
      ),
    );
  }
}
