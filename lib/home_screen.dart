import 'package:flutter/material.dart';
import 'package:flutter_video_playet/video_items.dart';
import 'package:video_player/video_player.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Flutter Video Player Demo'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          VideoItems(
            videoPlayerController: VideoPlayerController.asset(
              'assets/video_6.mp4',
            ),
            looping: true,
            autoplay: true,
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.asset(
              'assets/video_2.mp4',
            ),
            looping: false,
            autoplay: false,
          ),
        ],
      ),
    );
  }
}
