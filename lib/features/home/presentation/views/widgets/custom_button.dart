import 'package:bookly_app/core/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.color,
    required this.width,
    required this.height,
    this.rightRadius = 0,
    this.leftRadius = 0,
    required this.text,
    this.style = Styles.textStyle14,
  });
  final Color color;
  final double width;
  final double height;
  final double rightRadius;
  final double leftRadius;
  final String text;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.horizontal(
              left: Radius.circular(leftRadius),
              right: Radius.circular(rightRadius))),
      width: width,
      height: height,
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
