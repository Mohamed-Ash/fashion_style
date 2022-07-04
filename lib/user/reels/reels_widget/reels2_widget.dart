import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ReelsWidget2 extends StatefulWidget {
  const ReelsWidget2({Key? key}) : super(key: key);

  @override
  State<ReelsWidget2> createState() => _ReelsWidget2State();
}

class _ReelsWidget2State extends State<ReelsWidget2> {
  late VideoPlayerController _videoPlayerController;

  @override
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
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width,
      // height:  180,
      child: VideoPlayer(_videoPlayerController,),
    );
  }
}