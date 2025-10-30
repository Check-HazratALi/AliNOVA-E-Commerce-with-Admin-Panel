import 'package:alinova_ecommerce/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:alinova_ecommerce/utils/constants/colors.dart';
import 'package:alinova_ecommerce/utils/constants/sizes.dart';
import 'package:alinova_ecommerce/utils/device/device_utility.dart';
import 'package:alinova_ecommerce/utils/helpers/healper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardinNextButton extends StatelessWidget {
  const OnBoardinNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final dark = AHelperFunctions.isDarkMode(context);
    
    return Positioned(
      right: ASizes.defaultSpace,
      bottom: ADeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(shape: CircleBorder(), backgroundColor: dark ? AColors.primary : Colors.black),
        onPressed: ()=> OnBoardingController.instance.nextPage(),
        child: Icon(Iconsax.arrow_right_3),  
      ),
    );
  }
}