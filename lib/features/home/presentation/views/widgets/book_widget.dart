import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
  final String image;
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
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: AspectRatio(
              aspectRatio: aspect,
              child: CachedNetworkImage(
                imageUrl: image,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
