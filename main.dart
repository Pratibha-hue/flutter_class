import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: Colors.lightBlue.shade100,
        appBar: AppBar(
            title: Text('linux world'),
            backgroundColor: Colors.orangeAccent.shade700),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              child: Card(
                color: Colors.white,
                child: Image.asset(
                  'images/cap.jpg',
                  fit: BoxFit.fitWidth,
                ),
                elevation: 5,
              ),
            ),
            Container(
              width: 50,
              height: 50,
              child: RaisedButton(
                onPressed: () {
                  print('hi');
                  var audio = AudioCache();
                  audio.play('ringtone.mp3');
                },
                child: Card(
                  color: Colors.green.shade400,
                  child: Text('key'),
                  elevation: 150,
                ),
              ),
            ),
            Container(
              width: 300,
              height: 300,
              child: Card(
                color: Colors.white,
                child: Image.asset('images/cap.jpg'),
                elevation: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
