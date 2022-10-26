import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ProfileIcons extends StatelessWidget {
  final String? image;
  const ProfileIcons({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 6.r,
        right: 6.r,
      ),
      child: SizedBox(
        height: 15.h,
        width: 15.w,
        child: Image.asset(
          image!,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}