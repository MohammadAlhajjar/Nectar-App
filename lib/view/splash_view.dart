import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../core/resources/assets_manager.dart';
import '../core/resources/colors_manager.dart';
import 'onboarding_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const OnboardingView(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorsManager.primaryColor,
        alignment: Alignment.center,
        child: SvgPicture.asset(AssetsManager.splashImage),
      ),
    );
  }
}
