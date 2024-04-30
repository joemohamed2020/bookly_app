import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/app_router.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/blured_icon_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookWidget extends StatelessWidget {
  const BookWidget({
    super.key,
    this.playbutton = false,
    required this.width,
  });
  final double width;
  final bool playbutton;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRouter.bookPreviewRoute);
        },
        child: SizedBox(
          width: width,
          child: AspectRatio(
            aspectRatio: aspect,
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
                      top: ((1 / aspect) * width) - 40,
                      left: width - 40,
                      child: const BluredIconButtonWidget())
                  : Container()
            ]),
          ),
        ),
      ),
    );
  }
}
