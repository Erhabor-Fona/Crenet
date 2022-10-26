import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../const/strings.dart';
import '../../../const/style.dart';

class ProfileStats extends StatelessWidget {
  final String? stat;
  final String? statValue;
  const ProfileStats({
    Key? key, required this.stat, required this.statValue
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AutoSizeText(statValue!, style: kProfileStats,),
        AutoSizeText(stat!, style: kProfileStatsTag,),
      ],
    );
  }
}