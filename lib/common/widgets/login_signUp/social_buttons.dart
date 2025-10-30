import 'package:alinova_ecommerce/utils/constants/image_strings.dart';
import 'package:alinova_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:alinova_ecommerce/utils/constants/colors.dart';


class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(border: Border.all(color: AColors.grey), borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: (){}, 
            icon: Image(
              height: ASizes.iconLg,
              width: ASizes.iconLg,
              image: AssetImage(AImages.google)
              ),
            ),
        ),
        const SizedBox(width: ASizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(border: Border.all(color: AColors.grey), borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: (){}, 
            icon: Image(
              height: ASizes.iconLg,
              width: ASizes.iconLg,
              image: AssetImage(AImages.facebook)
              ),
            ),
        )
      ],
    );
  }
}


