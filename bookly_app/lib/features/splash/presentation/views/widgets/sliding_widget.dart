import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SlidingWidget extends StatelessWidget {
  const SlidingWidget({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, child) {
          return SlideTransition(
            position: slidingAnimation,
            child: Text(
              'Read Free Book',
              style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),
            ),
          );
        });
  }
}

class SlidingSplashLogo extends StatelessWidget {
  const SlidingSplashLogo({
    super.key,
    required this.animationControllerLogo,
    required this.slidingAnimationLogo,
  });

  final AnimationController animationControllerLogo;
  final Animation<Offset> slidingAnimationLogo;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: animationControllerLogo,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimationLogo,
            child: SvgPicture.asset(
              'assets/images/logo-splash-screen.svg',
              height: 250.h,
              width: 250.w,
            ),
          );
        });
  }
}
