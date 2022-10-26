import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/custom.icons.dart';
import '../const/strings.dart';
import '../const/style.dart';
class CustomAppBar extends StatelessWidget with PreferredSizeWidget{
  @override
  final Size preferredSize;
  final String? title;
  const CustomAppBar({
    Key? key, required this.title
  }) : preferredSize = const Size.fromHeight(50), super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: kWhite,
      title: Center(
        child: AutoSizeText(title!,
          style: kAppBarTextStyle,),
      ),
      leading: IconButton(icon: Icon(Icons.arrow_back_outlined, color: kBlackText, size: 20.r,), onPressed: (){},),
      actions: [
        //ToDo: address notification Icon color
        Icon(Icons.notifications_outlined, color: kBlackText, size: 25.r,),
        SizedBox(width: 15.w,),
        Icon(MyFlutterApp.menuIcon, color: kBlackText, size: 20.r,),
        SizedBox(width: 10.w,),
      ],
    );
  }
}