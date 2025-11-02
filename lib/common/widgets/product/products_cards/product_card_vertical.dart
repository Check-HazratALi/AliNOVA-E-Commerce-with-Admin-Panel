import 'package:alinova_ecommerce/common/styles/rounded_container.dart';
import 'package:alinova_ecommerce/common/styles/shadow.dart';
import 'package:alinova_ecommerce/common/widgets/images/rounded_images.dart';
import 'package:alinova_ecommerce/common/widgets/icons/a_circular_icon.dart';
import 'package:alinova_ecommerce/common/widgets/texts/brand_title_with_verify.dart';
import 'package:alinova_ecommerce/common/widgets/texts/product_price.dart';
import 'package:alinova_ecommerce/common/widgets/texts/producttitle_text.dart';
import 'package:alinova_ecommerce/features/shop/screens/product_details/product_details.dart';
import 'package:alinova_ecommerce/utils/constants/colors.dart';
import 'package:alinova_ecommerce/utils/constants/image_strings.dart';
import 'package:alinova_ecommerce/utils/constants/sizes.dart';
import 'package:alinova_ecommerce/utils/helpers/healper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () => Get.to(()=> ProductDetails()),
      child: Container(
        width: 180,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [ShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(ASizes.productImageRadius),
          color: dark ? AColors.darkerGrey : Colors.white,
        ),
        child: Column(
          children: [
            ARoundedContainer(
              height: 180,
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
                        "25%",
                        style: Theme.of(
                          context,
                        ).textTheme.labelLarge!.apply(color: AColors.black),
                      ),
                    ),
                  ),

                  Positioned(
                    top: 0,
                    right: 0,
                    child: CircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: ASizes.spaceBtwItems / 2),
            //Details
            Padding(
              padding: EdgeInsetsGeometry.only(left: ASizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTitleText(
                    title: 'Green Nike Air Shoes',
                    smallSize: true,
                  ),
                  SizedBox(height: ASizes.spaceBtwItems / 2),
                  BrandTitleTextWithVerification(
                    title: "Nike"
                  )
                ],
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: ProductPriceText(price: '35', isLarge: true),
                ),

                Container(
                  decoration: BoxDecoration(
                    color: AColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(ASizes.cardRadiusMd),
                      bottomRight: Radius.circular(ASizes.productImageRadius),
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
    );
  }
}



