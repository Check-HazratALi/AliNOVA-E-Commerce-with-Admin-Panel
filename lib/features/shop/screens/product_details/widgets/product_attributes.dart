import 'package:alinova_ecommerce/common/styles/rounded_container.dart';
import 'package:alinova_ecommerce/common/widgets/chips/choice_chip.dart';
import 'package:alinova_ecommerce/common/widgets/texts/product_price.dart';
import 'package:alinova_ecommerce/common/widgets/texts/producttitle_text.dart';
import 'package:alinova_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:alinova_ecommerce/utils/constants/colors.dart';
import 'package:alinova_ecommerce/utils/constants/sizes.dart';
import 'package:alinova_ecommerce/utils/helpers/healper_function.dart';
import 'package:flutter/material.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        //Selected Attribute
        ARoundedContainer(
          padding: EdgeInsets.all(ASizes.md),
          backgroundColor: dark ? AColors.darkGrey : AColors.grey,
          child: Column(
            children: [
              //Title, Price and Stock Status
              Row(
                children: [
                  sectionHeading(title: 'Variation', showActionButton: false),
                  SizedBox(width: ASizes.spaceBtwItems),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          ProductTitleText(title: 'Price : ', smallSize: true),
                          SizedBox(width: ASizes.spaceBtwItems),
                          Text(
                            '\$25',
                            style: Theme.of(context).textTheme.titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          SizedBox(width: ASizes.spaceBtwItems),

                          ProductPriceText(price: '20'),
                        ],
                      ),

                      Row(
                        children: [
                          ProductTitleText(title: 'Stock', smallSize: true),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              ProductTitleText(
                title:
                    'This is the Description of the product and it can go up to max 4 line',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        SizedBox(height: ASizes.spaceBtwItems),

        // Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sectionHeading(title: 'Colors', showActionButton: false),
            SizedBox(height: ASizes.spaceBtwItems / 2),
            Wrap(
              spacing: 10,
              children: [
                Choicechip(
                  text: 'Green',
                  selected: true,
                  onSelected: (value) {},
                ),
                Choicechip(
                  text: 'Pink',
                  selected: false,
                  onSelected: (value) {},
                ),
                Choicechip(
                  text: 'Yellow',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: ASizes.spaceBtwItems),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sectionHeading(title: 'Size', showActionButton: false),
            SizedBox(height: ASizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                Choicechip(text: 'EU 34', selected: true),
                Choicechip(text: 'EU 36', selected: false),
                Choicechip(text: 'EU 38', selected: false),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
