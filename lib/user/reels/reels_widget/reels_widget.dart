// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ReelsWidget extends StatefulWidget {
  const ReelsWidget({Key? key}) : super(key: key);

  @override
  State<ReelsWidget> createState() => _ReelsWidgetState();
}

class _ReelsWidgetState extends State<ReelsWidget> {
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.asset('assets/videos/adidas.mp4')
      ..initialize().then((_) {
        setState(() {});
        _videoPlayerController.play();
      });
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width,
      // height:  180,
      child: VideoPlayer(_videoPlayerController),
    );
  }
}



/* class ReelsWidget1 extends StatefulWidget {
  const ReelsWidget1({Key? key}) : super(key: key);

  @override
  State<ReelsWidget> createState() => _ReelsWidgetState();
}

class _ReelsWidget1State extends State<ReelsWidget1> {
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.asset('assets/videos/adidas.mp4')
      ..initialize().then((_) {
        setState(() {});
        _videoPlayerController.play();
      });
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height:  MediaQuery.of(context).size.height,
      child: VideoPlayer(_videoPlayerController),
    );
  }
} */