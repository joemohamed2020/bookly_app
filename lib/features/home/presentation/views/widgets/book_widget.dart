import 'package:bookly_app/core/app_router.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/blured_icon_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
          GoRouter.of(context).push(AppRouter.bookPreviewRoute);
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
