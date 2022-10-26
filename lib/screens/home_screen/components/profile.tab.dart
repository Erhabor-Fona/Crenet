import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../const/style.dart';

class ProfileTabView extends StatelessWidget {
  const ProfileTabView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child: AppBar(
        elevation: 0,
        backgroundColor: kWhite,
        bottom: TabBar(
          indicatorColor: kOrangeButton,
          tabs: [
            Tab(
              child: Icon(Icons.grid_view_outlined, color: kBlackText, size: 24.r,),
            ),
            Tab(
              child: Icon(Icons.play_arrow_outlined, color: kFillText, size: 24.r,),
            ),
            Tab(
              child: Icon(Icons.stars_outlined, color: kFillText, size: 24.r,),
            ),
          ],
        ),
      ),
    );
  }
}