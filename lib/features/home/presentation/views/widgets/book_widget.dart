import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/blured_icon_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookWidget extends StatelessWidget {
  const BookWidget({
    super.key,
    this.playbutton = false,
    required this.width,
    required this.image,
  });
  final double width;
  final bool playbutton;
  final ImageProvider<Object> image;
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
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: image,
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
