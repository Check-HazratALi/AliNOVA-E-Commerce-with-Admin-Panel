import 'package:alinova_ecommerce/common/widgets/icons/a_circular_icon.dart';
import 'package:alinova_ecommerce/utils/constants/colors.dart';
import 'package:alinova_ecommerce/utils/constants/sizes.dart';
import 'package:alinova_ecommerce/utils/helpers/healper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductQuantitywithAdd extends StatelessWidget {
  const ProductQuantitywithAdd({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: ASizes.md,
          color: AHelperFunctions.isDarkMode(context)
              ? AColors.white
              : AColors.black,
        ),
    
        SizedBox(width: ASizes.spaceBtwItems),
        Text(
          "2",
          style: Theme.of(context).textTheme.titleSmall,
        ),
        SizedBox(width: ASizes.spaceBtwItems),
    
        CircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: ASizes.md,
          color: AHelperFunctions.isDarkMode(context)
              ? AColors.white
              : AColors.black,
        ),
      ],
    );
  }
}
