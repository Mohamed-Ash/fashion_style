// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ReelsWidget2 extends StatefulWidget {
  const ReelsWidget2({Key? key}) : super(key: key);

  @override
  State<ReelsWidget2> createState() => _ReelsWidget2State();
}

class _ReelsWidget2State extends State<ReelsWidget2> {
  late VideoPlayerController _videoPlayerController;
  bool startedPlaying = false;
  /* @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.asset('assets/videos/adidas.mp4')
      ..initialize().then((_) {
        setState(() {});
        _videoPlayerController.play();
        _videoPlayerController.pause();
      });
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  } */

  @override
  void initState() {
    super.initState();

    _videoPlayerController = VideoPlayerController.asset('assets/videos/adidas.mp4');
    _videoPlayerController.addListener(() {
      if (startedPlaying && !_videoPlayerController.value.isPlaying) {
        Navigator.pop(context);
      }
    });
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  Future<bool> started() async {
    await _videoPlayerController.initialize();
    await _videoPlayerController.play();
    startedPlaying = true;
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: FutureBuilder<bool>(
          future: started(),
          builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
            if (snapshot.data ?? false) {
              return AspectRatio(
                aspectRatio: _videoPlayerController.value.aspectRatio,
                child: VideoPlayer(_videoPlayerController),
              );
            } else {
              return const Text('waiting for video to load');
            }
          },
        ),
      );
  }
}



//'assets/videos/adidas.mp4'