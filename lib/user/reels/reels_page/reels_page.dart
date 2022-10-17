// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace
import 'package:fashion_style/user/reels/reels_widget/reels2_widget.dart';
import 'package:fashion_style/user/reels/reels_widget/reels_widget.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ReelsPage extends StatefulWidget {
  const ReelsPage({Key? key}) : super(key: key);

  @override
  State<ReelsPage> createState() => _ReelsPageState();
}

class _ReelsPageState extends State<ReelsPage> {
  PageController controller = PageController(initialPage: 0);

/*   late VideoPlayerController _videoPlayerController;

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
  } */

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      // controller: controller,
      children:const [
        ReelsWidget(),
        ReelsWidget2()
      ],
    );
  }

 /*  List<Widget> content(BuildContext context){
    return [
      Container(
        width: MediaQuery.of(context).size.width,
        height:  MediaQuery.of(context).size.height,
        color: Colors.grey,
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width,
        height:  MediaQuery.of(context).size.height,
        child: VideoPlayer(_videoPlayerController),
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width,
        height:  MediaQuery.of(context).size.height,
        child: VideoPlayer(_videoPlayerController),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        height:  MediaQuery.of(context).size.height,
        color: Colors.grey,
      ),
    ];
  } */
}

/* 

  video_trimmer: ^1.1.3
  video_player: ^2.4.2
  chewie: ^1.3.3
 */