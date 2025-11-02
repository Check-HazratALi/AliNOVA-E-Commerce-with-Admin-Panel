import 'package:alinova_ecommerce/common/styles/rounded_container.dart';
import 'package:alinova_ecommerce/common/widgets/images/circular_images.dart';
import 'package:alinova_ecommerce/common/widgets/texts/brand_title_with_verify.dart';
import 'package:alinova_ecommerce/common/widgets/texts/product_price.dart';
import 'package:alinova_ecommerce/common/widgets/texts/producttitle_text.dart';
import 'package:alinova_ecommerce/utils/constants/colors.dart';
import 'package:alinova_ecommerce/utils/constants/enums.dart';
import 'package:alinova_ecommerce/utils/constants/image_strings.dart';
import 'package:alinova_ecommerce/utils/constants/sizes.dart';
import 'package:alinova_ecommerce/utils/helpers/healper_function.dart';
import 'package:flutter/material.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Price & sale Tag
        Row(
          children: [
            //sale Tag
            ARoundedContainer(
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
            SizedBox(width: ASizes.spaceBtwItems),

            //price
            Text(
              "\$250",
              style: Theme.of(context).textTheme.titleSmall!.apply(
                decoration: TextDecoration.lineThrough,
              ),
            ),
            SizedBox(width: ASizes.spaceBtwItems),
            ProductPriceText(price: '175', isLarge: true),
          ],
        ),

        SizedBox(height: ASizes.spaceBtwItems / 1.5),

        //Title
        ProductTitleText(title: "Green Nike Sports Shirt"),
        SizedBox(height: ASizes.spaceBtwItems / 1.5),

        //Stock Status
        Row(
          children: [
            ProductTitleText(title: "Status"),
            SizedBox(width: ASizes.spaceBtwItems ),
            Text("In Stock", style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        SizedBox(height: ASizes.spaceBtwItems / 1.5),

        //Brand
        Row(
          children: [
            CircularImage(image: AImages.darkApplogo,
            width: 32,
            height: 32,
            overlayColor: dark ? AColors.white : AColors.black,),
            BrandTitleTextWithVerification(title: 'Nike', BrandTextSize: TextSizes.medium,)
          ],
        )
      ],
    );
  }
}
