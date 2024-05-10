import 'dart:ui';

import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BluredIconButtonWidget extends StatelessWidget {
  const BluredIconButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
        child: SizedBox(
          height: 30,
          width: 30,
          child: IconButton(
            padding: EdgeInsets.zero,
            style: ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll(Colors.white.withOpacity(0.0))),
            iconSize: 20,
            onPressed: () {
              GoRouter.of(context).push(AppRouter.bookPreviewRoute);
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
