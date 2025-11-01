import 'package:alinova_ecommerce/utils/constants/colors.dart';
import 'package:alinova_ecommerce/utils/constants/sizes.dart';
import 'package:alinova_ecommerce/utils/device/device_utility.dart';
import 'package:alinova_ecommerce/utils/helpers/healper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ASearchBox extends StatelessWidget {
  const ASearchBox({
    super.key, required this.text, required this.showBackground, required this.showBorder,
  });

  final String text;
    final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {

    final dark = AHelperFunctions.isDarkMode(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: ASizes.defaultSpace),
      child: Container(
        width: ADeviceUtils.getScreenWidth(context),
        padding: EdgeInsets.all(ASizes.md),
        decoration: BoxDecoration(
          color: showBackground ? dark ? AColors.dark: AColors.light : Colors.transparent,
          borderRadius: BorderRadius.circular(ASizes.borderRadiusLg),
          border: showBorder ?  Border.all(color: AColors.grey) : null
        ),
        child: Row(
          children: [
            Icon(Iconsax.search_normal, color: Colors.black45,),
            const SizedBox(width: ASizes.spaceBtwItems,),
            Text(text, style: Theme.of(context).textTheme.bodySmall,)
          ],
        ),
      ),
    );
  }
}

