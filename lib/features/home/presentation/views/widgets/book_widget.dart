import 'package:bookly_app/features/home/presentation/views/widgets/blured_icon_button_widget.dart';
import 'package:flutter/material.dart';

class BookWidget extends StatelessWidget {
  const BookWidget({
    super.key,
    this.height = 120,
    this.width = 90,
    this.playbutton = false,
  });
  final double height;
  final double width;
  final bool playbutton;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Stack(children: [
        Container(
          height: height,
          width: width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/Book3.png"),
            ),
          ),
        ),
        playbutton
            ? Positioned(
                top: height - 40,
                left: width - 40,
                child: const BluredIconButtonWidget())
            : Container()
      ]),
    );
  }
}
