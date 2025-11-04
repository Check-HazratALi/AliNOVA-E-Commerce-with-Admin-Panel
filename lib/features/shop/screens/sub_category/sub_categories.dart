import 'package:alinova_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:alinova_ecommerce/common/widgets/images/rounded_images.dart';
import 'package:alinova_ecommerce/common/widgets/product/products_cards/product_card_horizontal.dart';
import 'package:alinova_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:alinova_ecommerce/utils/constants/image_strings.dart';
import 'package:alinova_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AAppbar(showBackArrow: true, Title: Text("Sports Shirts")),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ASizes.defaultSpace),
          child: Column(
            children: [
              RoundedImages(
                width: double.infinity,
                imageUrl: AImages.promobanner3,
                applyImageRadious: true,
              ),
              SizedBox(height: ASizes.spaceBtwSections),

              Column(
                children: [
                  sectionHeading(title: 'Sports shirts'),
                  SizedBox(height: ASizes.spaceBtwItems / 2),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder:(context, index) => const SizedBox(width: ASizes.spaceBtwItems,),
                      itemBuilder: (context, index) => ProductCardHorizontal(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
