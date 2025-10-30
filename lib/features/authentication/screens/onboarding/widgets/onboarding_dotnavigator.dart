import 'package:alinova_ecommerce/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:alinova_ecommerce/utils/constants/colors.dart';
import 'package:alinova_ecommerce/utils/constants/sizes.dart';
import 'package:alinova_ecommerce/utils/device/device_utility.dart';
import 'package:alinova_ecommerce/utils/helpers/healper_function.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final controller = OnBoardingController.instance;
    final dark = AHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: ADeviceUtils.getBottomNavigationBarHeight() + 25,
      left: ASizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController, 
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: dark?AColors.light :AColors.dark, 
          dotHeight: 6,
        ),
      ),
    );
  }
}
