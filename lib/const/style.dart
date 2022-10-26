
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

Color kBlackText = const Color(0xff161722);
Color kWhite = const Color(0xffFFFFFF);
Color kFillText = const Color(0xff86878B);
Color kOrangeButton = const Color(0xffF52B29);
Color kDivideColor = const Color(0xffDADBDD);






TextStyle kAppBarTextStyle = TextStyle(
  fontFamily: 'proximaNovaSoft',
  fontStyle: FontStyle.normal,
  fontSize: 18.sp,
  fontWeight: FontWeight.w600,
  color: kBlackText
);

TextStyle kProfileNameStyle = TextStyle(
    fontFamily: 'proximaNovaSoft',
    fontStyle: FontStyle.normal,
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: kBlackText
);

TextStyle kProfileStats = TextStyle(
    fontFamily: 'proximaNovaSoft',
    fontStyle: FontStyle.normal,
    fontSize: 19.sp,
    fontWeight: FontWeight.w600,
    color: kBlackText
);

TextStyle kProfileStatsTag = TextStyle(
    fontFamily: 'proximaNovaSoft',
    fontStyle: FontStyle.normal,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: kFillText
);

TextStyle kFollowButtonText = TextStyle(
    fontFamily: 'proximaNovaSoft',
    fontStyle: FontStyle.normal,
    fontSize: 15.sp,
    fontWeight: FontWeight.w500,
    color: kWhite
);

TextStyle kVideoText = TextStyle(
    fontFamily: 'proximaNovaSoft',
    fontStyle: FontStyle.normal,
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    color: kWhite
);

TextStyle kWhiteButtonTextStyle = TextStyle(
    fontFamily: 'proximaNovaSoft',
    fontStyle: FontStyle.normal,
    fontSize: 15.sp,
    fontWeight: FontWeight.w500,
    color: kBlackText
);

///**********Button Styles****************/

ButtonStyle kFollowButtonStyle = TextButton.styleFrom(
  backgroundColor: kOrangeButton,
  fixedSize: const Size(146, 44),
  shape:  RoundedRectangleBorder(
    side: BorderSide(color: kOrangeButton),
    borderRadius: const BorderRadius.all(
      Radius.circular(4),
    ),
  ),
);

ButtonStyle kWhiteButton = TextButton.styleFrom(
  backgroundColor: kWhite,
  fixedSize: const Size(105, 44),
  shape:  RoundedRectangleBorder(
    side: BorderSide(color: kFillText),
    borderRadius: const BorderRadius.all(
      Radius.circular(4),
    ),
  ),
);

ButtonStyle kDropDownButton = TextButton.styleFrom(
  backgroundColor: kWhite,
  fixedSize: const Size(44, 44),
  shape:  RoundedRectangleBorder(
    side: BorderSide(color: kFillText),
    borderRadius: const BorderRadius.all(
      Radius.circular(4),
    ),
  ),
);