import 'package:crenet_assesment/const/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/style.dart';
import '../screens/add/add.dart';
import '../screens/home_screen/home.screen.dart';

class BottomNavBar extends StatefulWidget {
const  BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;

  List<Widget> pages = const [
    MyHomePage(),
    AddScreen(),
    AddScreen(),
    AddScreen(),
    AddScreen(),
  ];

  void onItemTap(int index){
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              spreadRadius: 0,
              blurRadius: 10,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(40),
            topLeft: Radius.circular(40),
          ),
          child: CupertinoTabBar(
            backgroundColor: kWhite,
            currentIndex: selectedIndex,
            onTap: onItemTap,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem( icon: Icon(Icons.home_outlined, size: 28.r, color: kBlackText,),),
              BottomNavigationBarItem( icon: Icon(Icons.home_outlined, size: 28.r, color: kBlackText,),),
              BottomNavigationBarItem( icon: Icon(Icons.add_circle, size: 28.r, color: kOrangeButton,),),
              BottomNavigationBarItem( icon: Icon(Icons.stars_outlined, color: kFillText, size: 28.r,),),
              BottomNavigationBarItem( icon:CircleAvatar(
                radius: 15.r,
                  backgroundImage: const AssetImage(Assets.profile, )),),
            ],
          ),
        ),
      ),
    );
  }
}
