import 'package:alinova_ecommerce/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:alinova_ecommerce/features/authentication/screens/onboarding/widgets/onboardin_next_button.dart';
import 'package:alinova_ecommerce/features/authentication/screens/onboarding/widgets/onboarding_dotnavigator.dart';
import 'package:alinova_ecommerce/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:alinova_ecommerce/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
 import 'package:alinova_ecommerce/utils/constants/image_strings.dart';
import 'package:alinova_ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          //Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: AImages.onBoardingImage1,
                title: ATexts.onBoardingTitle1,
                subTitle: ATexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: AImages.onBoardingImage2,
                title: ATexts.onBoardingTitle2,
                subTitle: ATexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: AImages.onBoardingImage3,
                title: ATexts.onBoardingTitle3,
                subTitle: ATexts.onBoardingSubTitle3,
              ),
            ],
          ),

          //Skip Button
          OnBoardingSkip(),

          //smooth Page Indicator
          OnBoardingDotNavigation(),

          //circular Button

          OnBoardinNextButton()
        ],
      ),
    );
  }
}

