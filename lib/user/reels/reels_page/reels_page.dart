// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ReelsPage extends StatelessWidget {

  ReelsPage({Key? key}) : super(key: key);

  PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    List<Widget> reel = [
      Container(
        width: MediaQuery.of(context).size.width,
        height:  MediaQuery.of(context).size.height,
        color: Colors.blue,
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        height:  MediaQuery.of(context).size.height,
        color: Colors.green,
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        height:  MediaQuery.of(context).size.height,
        color: Colors.grey,
      ),
    ];
 
    return SafeArea(
      top: true,
      bottom: true,
      left: true,
      right: true,
      child: PageView(
        scrollDirection: Axis.vertical,
        children: reel,
        controller: controller,
      ) ,
    );
  }
}

/* 

  video_trimmer: ^1.1.3
  video_player: ^2.4.2
  chewie: ^1.3.3
 */