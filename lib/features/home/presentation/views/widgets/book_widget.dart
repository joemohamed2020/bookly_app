import 'package:bookly_app/features/home/presentation/views/book_preview_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/blured_icon_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookWidget extends StatelessWidget {
  const BookWidget({
    super.key,
    this.playbutton = false,
    required this.height,
  });
  final double height;
  final bool playbutton;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: GestureDetector(
        onTap: () {
          Get.to(const BookPreviewView(),
              transition: Transition.fade,
              duration: const Duration(seconds: 2));
        },
        child: SizedBox(
          height: height,
          child: AspectRatio(
            aspectRatio: 2.7 / 4,
            child: Stack(children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/Book3.png"),
                  ),
                ),
              ),
              playbutton
                  ? Positioned(
                      top: height - 40,
                      left: ((2.7 / 4) * height) - 40,
                      child: const BluredIconButtonWidget())
                  : Container()
            ]),
          ),
        ),
      ),
    );
  }
}
