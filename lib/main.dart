import 'package:auto_size_text/auto_size_text.dart';
import 'package:crenet_assesment/const/custom.icons.dart';
import 'package:crenet_assesment/const/style.dart';
import 'package:crenet_assesment/screens/home_screen/home.screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'common_widgets/bottom_nav_bar.dart';
import 'common_widgets/custom.appbar.dart';
import 'const/strings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child){
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          home: BottomNavBar(),
        );
      }
    );
  }
}




