import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_player/video_player.dart';

import '../../../const/strings.dart';
import '../../../const/style.dart';
import '../video_items.dart';

class ImageWidget extends StatelessWidget {
  final String? image;
  final String? view;
  const ImageWidget({
    Key? key,
    required this.image,
    required this.view
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => VideoItems(
          videoPlayerController: VideoPlayerController.network(Strings.videoUrl),
          looping: false,
          autoplay: true,
        ),
        ),
        );
      },
      child: SizedBox(
        height: 182.h,
        width: 137.w,
        child: Stack(
          children: [
            Image.asset(image!),
            Positioned(
              top: 140,
              child: Row(
                children: [
                  Icon(Icons.play_arrow, color: kWhite,),
                  Text(view!, style: kVideoText,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}