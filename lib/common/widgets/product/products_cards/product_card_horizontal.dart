import 'package:alinova_ecommerce/common/styles/rounded_container.dart';
import 'package:alinova_ecommerce/common/widgets/icons/a_circular_icon.dart';
import 'package:alinova_ecommerce/common/widgets/images/rounded_images.dart';
import 'package:alinova_ecommerce/common/widgets/texts/brand_title_with_verify.dart';
import 'package:alinova_ecommerce/common/widgets/texts/product_price.dart';
import 'package:alinova_ecommerce/common/widgets/texts/producttitle_text.dart';
import 'package:alinova_ecommerce/utils/constants/colors.dart';
import 'package:alinova_ecommerce/utils/constants/image_strings.dart';
import 'package:alinova_ecommerce/utils/constants/sizes.dart';
import 'package:alinova_ecommerce/utils/helpers/healper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductCardHorizontal extends StatelessWidget {
  const ProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(ASizes.productImageRadius),
        color: dark ? AColors.darkerGrey : AColors.softGrey,
      ),
      child: Row(
        children: [
          ARoundedContainer(
            height: 120,
            padding: EdgeInsets.all(ASizes.sm),
            backgroundColor: dark ? AColors.dark : AColors.light,
            child: Stack(
              children: [
                RoundedImages(
                  imageUrl: AImages.facebook,
                  applyImageRadious: true,
                ),

                Positioned(
                  top: 12,
                  child: ARoundedContainer(
                    radius: ASizes.sm,
                    backgroundColor: AColors.secondary.withOpacity(0.8),
                    padding: EdgeInsets.symmetric(
                      horizontal: ASizes.sm,
                      vertical: ASizes.xs,
                    ),
                    child: Text(
                      '25%',
                      style: Theme.of(
                        context,
                      ).textTheme.labelLarge!.apply(color: AColors.black),
                    ),
                  ),
                ),

                Positioned(
                  top: 0,
                  right: 0,
                  child: CircularIcon(icon: Iconsax.heart5, color: Colors.red),
                ),
              ],
            ),
          ),

          //Details
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: ASizes.sm, left: ASizes.sm),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProductTitleText(
                        title: 'Green Nike Half Sleeves Shirt',
                        smallSize: true,
                      ),
                      SizedBox(height: ASizes.spaceBtwItems / 2),
                      BrandTitleTextWithVerification(title: 'Nike'),
                    ],
                  ),

                  const Spacer(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Flexible(child: ProductPriceText(price: '256.0')),

                      Container(
                        decoration: BoxDecoration(
                          color: AColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(ASizes.cardRadiusMd),
                            bottomRight: Radius.circular(
                              ASizes.productImageRadius,
                            ),
                          ),
                        ),
                        child: SizedBox(
                          width: ASizes.iconLg * 1.2,
                          height: ASizes.iconLg * 1.2,
                          child: Center(
                            child: Icon(Iconsax.add, color: AColors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
