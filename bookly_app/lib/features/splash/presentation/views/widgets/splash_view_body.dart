import 'package:bookly_app/core/themes/colors/constants.dart';
import 'package:bookly_app/features/home/presentaion/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'sliding_widget.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with TickerProviderStateMixin {
  //بتعطيني قيمة بين ال0 وال1 عشان اغيرها بستخدم الي تحتها
  late AnimationController animationControllerText;
  // عشان اقدر اغير القيم
  late Animation<Offset> slidingAnimationText;

  late AnimationController animationControllerLogo;
  late Animation<Offset> slidingAnimationLogo;

  @override
  void initState() {
    super.initState();
    navigateToHomePageView();
    initSlidingTransistion();
    ////////////////////////////////////////////////////////////////////////////
    initSlidingTransitionLogo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: SlidingSplashLogo(
              animationControllerLogo: animationControllerLogo,
              slidingAnimationLogo: slidingAnimationLogo),
        ),
        SizedBox(
          height: 30.h,
        ),
        SlidingWidget(slidingAnimation: slidingAnimationText)
      ],
    ));
  }

  void initSlidingTransistion() {
    animationControllerText = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    slidingAnimationText = Tween<Offset>(
      begin: const Offset(0, 20),
      end: const Offset(0, 0),
    ).animate(animationControllerText);
    animationControllerText.forward();
  }

  void initSlidingTransitionLogo() {
    animationControllerLogo = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    slidingAnimationLogo =
        Tween<Offset>(begin: const Offset(0, -20), end: const Offset(0, 0))
            .animate(animationControllerLogo);
    animationControllerLogo.forward();
  }

  void navigateToHomePageView() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => const HomeView(),
          transition: Transition.leftToRightWithFade,
          duration: kHomeTransitionDuration);
    });
  }

  @override
  void dispose() {
    animationControllerText.dispose();
    animationControllerLogo.dispose();
    super.dispose();
  }
}
