import 'package:bookly_app/core/styles.dart';
import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({super.key, this.axisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment axisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: axisAlignment,
      children: [
        GestureDetector(
          child: const Icon(
            Icons.star,
            color: Color(0xffFFDD4F),
          ),
        ),
        const Text(
          "4.5",
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        const Text(
          "(52145)",
          style: Styles.textStyle14,
        ),
      ],
    );
  }
}
