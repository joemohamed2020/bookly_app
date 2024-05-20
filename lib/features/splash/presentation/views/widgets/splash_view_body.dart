import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> fadingAnimation;
  @override
  void initState() {
    super.initState();
    initFadingAnimation();
  }

  void initFadingAnimation() async {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    fadingAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(animationController);
    await animationController.forward();
    // await Get.off(const HomeView(),transition: Transition.fade,duration: const Duration(seconds: 2));
    GoRouter.of(context).pushReplacement("/HomeView");
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: fadingAnimation,
        builder: (context, _) {
          return FadeTransition(
            opacity: fadingAnimation,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image(
                  image: AssetImage(logo),
                ),
                Text(
                  "Browes More Books",
                  textAlign: TextAlign.center,
                )
              ],
            ),
          );
        });
  }
}
