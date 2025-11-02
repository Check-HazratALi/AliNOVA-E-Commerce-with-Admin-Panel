import 'package:alinova_ecommerce/common/widgets/icons/a_circular_icon.dart';
import 'package:alinova_ecommerce/utils/constants/colors.dart';
import 'package:alinova_ecommerce/utils/constants/sizes.dart';
import 'package:alinova_ecommerce/utils/helpers/healper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BottomAddToCard extends StatelessWidget {
  const BottomAddToCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: ASizes.defaultSpace, vertical: ASizes.defaultSpace/2),
      decoration: BoxDecoration(
        color: dark ? AColors.darkGrey : AColors.light,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(ASizes.cardRadiusLg),
          topRight: Radius.circular(ASizes.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircularIcon(
                icon: Iconsax.minus,
                backgroundColor: AColors.darkGrey,
                width: 40,
                height: 40,
                color: AColors.white,
              ),
              SizedBox(width: ASizes.spaceBtwItems),
              Text('2', style: Theme.of(context).textTheme.titleSmall,),
              SizedBox(width: ASizes.spaceBtwItems,),
              CircularIcon(
                icon: Iconsax.add,
                backgroundColor: AColors.darkGrey,
                width: 40,
                height: 40,
                color: AColors.white,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: (){}, 
            child: Text(' Add to Cart'),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(ASizes.md),
              backgroundColor: AColors.black,
              side: BorderSide(color: AColors.black)
            ),
          )
        ],
      ),
    );
  }
}