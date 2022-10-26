import 'package:flutter/material.dart';

import '../../../const/assets.dart';
import '../../../const/strings.dart';
import 'image.widget.dart';

class HomeGrid extends StatelessWidget {
  const HomeGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 3;
    final double itemWidth = size.width / 2;
    return GridView.count(crossAxisCount: 3,
      childAspectRatio: (itemWidth / itemHeight),
      mainAxisSpacing: 0.0,
      crossAxisSpacing: 0.0,
      padding: EdgeInsets.zero,
      primary: false,
      children: const [
        ImageWidget(view: Strings.view9,image: Assets.image1,),
        ImageWidget(view: Strings.view4,image: Assets.image2,),
        ImageWidget(view: Strings.view5,image: Assets.image3,),
        ImageWidget(view: Strings.view2,image: Assets.image4,),
        ImageWidget(view: Strings.view12,image: Assets.image5,),
        ImageWidget(view: Strings.view50,image: Assets.image6,),
      ],
    );
  }
}