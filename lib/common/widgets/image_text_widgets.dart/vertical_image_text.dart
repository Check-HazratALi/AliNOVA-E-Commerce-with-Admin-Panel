import 'package:alinova_ecommerce/utils/constants/colors.dart';
import 'package:alinova_ecommerce/utils/constants/sizes.dart';
import 'package:alinova_ecommerce/utils/helpers/healper_function.dart';
import 'package:flutter/material.dart';

class AVerticalImageText extends StatelessWidget {
  const AVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = AColors.white,
    this.showBackground,
    required this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? showBackground;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {

    final dark =AHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: ASizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: EdgeInsets.all(ASizes.sm),
              decoration: BoxDecoration(
                color: showBackground ?? (dark ? AColors.black:AColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(child: Image(image: AssetImage(image),fit: BoxFit.cover, color: dark ? AColors.light: AColors.dark,)),
            ),
      
            SizedBox(height: ASizes.spaceBtwItems / 2),
            Text(
              title,
              style: Theme.of(
                context,
              ).textTheme.labelMedium!.apply(color: textColor),
            ),
          ],
        ),
      ),
    );
  }
}
