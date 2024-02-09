// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Musiclistening extends StatefulWidget {
  const Musiclistening({Key? key}) : super(key: key);

  @override
  _MusiclisteningState createState() => _MusiclisteningState();
}

class _MusiclisteningState extends State<Musiclistening> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.orangeAccent,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Icon(
            Icons.keyboard_voice_sharp,
            color: Colors.blue,
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                'Singing for you',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              // Subtitle
              // ignore: prefer_const_constructors
              Text(
                '10 music',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
