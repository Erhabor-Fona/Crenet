import 'package:auto_size_text/auto_size_text.dart';
import 'package:crenet_assesment/const/style.dart';
import 'package:flutter/material.dart';

class FollowButton extends StatelessWidget {
  final String? label;
  final VoidCallback onPressed;
  const FollowButton({
    Key? key,
    required this.label, required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: onPressed, child:  AutoSizeText(
      label!,
      style: kFollowButtonText,
      maxLines: 1,
    ),
      style: kFollowButtonStyle,);
  }
}

class TransparentButton extends StatelessWidget {
  final String? label;
  final VoidCallback onPressed;
  const TransparentButton({
    Key? key,
    required this.label, required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: onPressed,
      style: kWhiteButton, child:  AutoSizeText(
      label!,
      style: kWhiteButtonTextStyle,
      maxLines: 1,
    ),);
  }
}

class DropDownButton extends StatelessWidget {
  final VoidCallback onPressed;
  const DropDownButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: onPressed,
      style: kDropDownButton, child:  Icon(Icons.arrow_drop_down_sharp, color: kBlackText,),);
  }
}