import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: AppBody(),
      ),
    );
  }
}

class AppBody extends StatefulWidget {
  const AppBody({Key? key}) : super(key: key);

  @override
  _AppBodyState createState() => _AppBodyState();
}

class _AppBodyState extends State<AppBody> {
  final audioPlayer = AudioPlayer();

  void playSound(notePath) async {
    await audioPlayer.play(notePath, isLocal: true);
  }

  Expanded buidKey({color, notePath}) {
    return Expanded(
      flex: 1,
      child: TextButton(
        onPressed: () {
          playSound(notePath);
        },
        child: Container(
          width: double.infinity,
          color: color,
        ),
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buidKey(color: Color(0xffF53832), notePath: 'assets/note1.wav'),
        buidKey(color: Color(0xffFF8A00), notePath: 'assets/note2.wav'),
        buidKey(color: Color(0xffFFE63C), notePath: 'assets/note3.wav'),
        buidKey(color: Color(0xff44A44B), notePath: 'assets/note4.wav'),
        buidKey(color: Color(0xff068175), notePath: 'assets/note5.wav'),
        buidKey(color: Color(0xff1F77D3), notePath: 'assets/note6.wav'),
        buidKey(color: Color(0xff771B88), notePath: 'assets/note7.wav'),
      ],
    );
  }
}
