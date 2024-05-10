import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookActionWidget extends StatelessWidget {
  const BookActionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(
          backGroundColor: Colors.white,
          borderRadius:
              const BorderRadius.horizontal(left: Radius.circular(20)),
          width: MediaQuery.of(context).size.width > 320
              ? 150
              : MediaQuery.of(context).size.width * 0.4,
          text: "19.99 €",
          style: Styles.textStyle18
              .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        CustomButton(
          backGroundColor: const Color(0xffEF8262),
          width: MediaQuery.of(context).size.width > 320
              ? 150
              : MediaQuery.of(context).size.width * 0.4,
          borderRadius:
              const BorderRadius.horizontal(right: Radius.circular(20)),
          text: "Free preview",
          style: Styles.textStyle16.copyWith(
              color: Colors.white,
              fontFamily: gilroyFont,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
