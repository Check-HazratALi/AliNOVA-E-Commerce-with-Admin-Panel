import 'package:alinova_ecommerce/common/widgets/brands/brand_show_case.dart';
import 'package:alinova_ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:alinova_ecommerce/common/widgets/product/products_cards/product_card_vertical.dart';
import 'package:alinova_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:alinova_ecommerce/utils/constants/image_strings.dart';
import 'package:alinova_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: EdgeInsets.all(ASizes.defaultSpace),
          child: Column(
            children: [
              //Brands
              BrandShowcase(
                images: [
                  AImages.promobanner1,
                  AImages.promobanner2,
                  AImages.promobanner3,
                ],
              ),
              BrandShowcase(
                images: [
                  AImages.promobanner1,
                  AImages.promobanner2,
                  AImages.promobanner3,
                ],
              ),
              //Products
              sectionHeading(title: "You might like", onPressed: () {}),
              SizedBox(height: ASizes.spaceBtwItems),

              GridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => ProductCardVertical(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
