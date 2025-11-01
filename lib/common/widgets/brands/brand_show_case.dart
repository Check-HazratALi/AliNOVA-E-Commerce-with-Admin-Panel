import 'package:alinova_ecommerce/common/styles/rounded_container.dart';
import 'package:alinova_ecommerce/common/widgets/brands/brand_card.dart';
import 'package:alinova_ecommerce/utils/constants/colors.dart';
import 'package:alinova_ecommerce/utils/constants/sizes.dart';
import 'package:alinova_ecommerce/utils/helpers/healper_function.dart';
import 'package:flutter/material.dart';

class BrandShowcase extends StatelessWidget {
  const BrandShowcase({super.key, required this.images});

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return ARoundedContainer(
      showBorder: true,
      borderColor: AColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: EdgeInsets.all(ASizes.sm),
      margin: EdgeInsets.only(bottom: ASizes.spaceBtwItems),
      child: Column(
        children: [
          //Brand with Products Count
          BrandCard(showBorder: false),
          SizedBox(height: ASizes.spaceBtwItems,),

          Row(
            children: images.map((image)=> brandTopProductImageWidgets(image, context)).toList(),
          ),
        ],
      ),
    );
  }

  Widget brandTopProductImageWidgets(String image , context) {
    return Expanded(
      child: ARoundedContainer(
        height: 100,
        backgroundColor: AHelperFunctions.isDarkMode(context)
            ? AColors.darkerGrey
            : AColors.light,
        margin: EdgeInsets.only(right: ASizes.sm),
        padding: EdgeInsets.all(ASizes.md),
        child: Image(image: AssetImage(image)),
      ),
    );
  }
}