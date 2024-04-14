import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

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

  void initFadingAnimation() async{
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    fadingAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(animationController);
    await animationController.forward();
    await Get.to(const HomeView(),transition: Transition.fade,duration: const Duration(seconds: 2));
  }

  // void initScalingAnimation() async{
  //   animationController = AnimationController(
  //       vsync: this, duration: const Duration(milliseconds: 700));
  //   fadingAnimation =
  //       Tween<double>(begin: 0.85, end: 1.25).animate(animationController);
  //   await animationController.forward();
  //   await animationController.reverse();
  // }

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
