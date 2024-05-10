import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.backGroundColor,
      required this.width,
      this.height = 48,
      required this.text,
      this.style = Styles.textStyle14,
      this.borderRadius = BorderRadius.zero});
  final Color backGroundColor;
  final double width;
  final double height;
  final BorderRadius borderRadius;
  final String text;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
          fixedSize: Size(width, height),
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
          backgroundColor: backGroundColor),
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
