import 'package:auto_size_text/auto_size_text.dart';
import 'package:crenet_assesment/common_widgets/follow.button.dart';
import 'package:crenet_assesment/const/assets.dart';
import 'package:crenet_assesment/const/custom.icons.dart';
import 'package:crenet_assesment/screens/home_screen/video_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:video_player/video_player.dart';


import '../../common_widgets/custom.appbar.dart';
import '../../const/strings.dart';
import '../../const/style.dart';
import 'components/home.grid.dart';
import 'components/profile.icons.dart';
import 'components/profile.stats.dart';
import 'components/profile.tab.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        // bottomNavigationBar: BottomNavBar(),
        backgroundColor: kWhite,
        appBar: const CustomAppBar(
          title: Strings.alicia,
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 26.r),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 11.r),
                          child: Container(
                            height: 86.h,
                            width: 86.h,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16.r))),
                            child: Image.asset(
                              Assets.profile,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10.r),
                          child: Row(
                            children: [
                              AutoSizeText(
                                Strings.profileName,
                                style: kProfileNameStyle,
                              ),
                              Image.asset(Assets.checkmark),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 16.r),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const <Widget>[
                              ProfileIcons(
                                image: Assets.rocket,
                              ),
                              ProfileIcons(image: Assets.cool),
                              ProfileIcons(
                                image: Assets.music,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 52.r, right: 52.r, bottom: 21.r),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      ProfileStats( statValue: Strings.followingValue, stat: Strings.following,),
                      ProfileStats( statValue: Strings.followersValues, stat: Strings.followers,),
                      ProfileStats( statValue: Strings.likesValues, stat: Strings.likes,),
                      ProfileStats( statValue: Strings.viewsValue, stat: Strings.views,)
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 33.r),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FollowButton(label: Strings.follow, onPressed: (){}),
                      TransparentButton(label: Strings.message, onPressed: (){},),
                      DropDownButton(onPressed: (){},)
                    ],
                  ),
                ),
                 Padding(
                   padding: EdgeInsets.only(bottom: 11.r),
                   child: Divider(
                    color: kDivideColor,
                ),
                 ),
                const ProfileTabView(),
                Expanded(child: TabBarView(children: [
                  const HomeGrid(),
                  AutoSizeText(Strings.hello, style: kAppBarTextStyle,),
                  AutoSizeText(Strings.hello, style: kAppBarTextStyle,),
                ],))
              ],
            ),
          ),
        ),
      ),
    );
  }
}










