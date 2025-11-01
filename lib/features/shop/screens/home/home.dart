import 'package:alinova_ecommerce/common/widgets/custom_shapes/containers/primaryheader_container.dart';
import 'package:alinova_ecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:alinova_ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:alinova_ecommerce/common/widgets/product/products_cards/product_card_vertical.dart';
import 'package:alinova_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:alinova_ecommerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:alinova_ecommerce/features/shop/screens/home/widgets/home_categories.dart';
import 'package:alinova_ecommerce/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:alinova_ecommerce/utils/constants/image_strings.dart';
import 'package:alinova_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            APrimaryHeaderContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //AppBar
                  AHomeAppBar(),
                  const SizedBox(height: ASizes.spaceBtwSections),

                  //Searchbar
                  ASearchBox(text: 'Search in Store'),
                  const SizedBox(height: ASizes.spaceBtwSections),

                  //Categories
                  Padding(
                    padding: EdgeInsets.only(left: ASizes.defaultSpace),
                    child: Column(
                      children: [
                        sectionHeading(
                          title: 'Popular Categories',
                          showActionButton: true,
                        ),
                        const SizedBox(height: ASizes.spaceBtwItems),

                        homeCategories(),
                      ],
                    ),
                  ),
                  const SizedBox(height: ASizes.spaceBtwSections),
                ],
              ),
            ),
            //Body
            Padding(
              padding: const EdgeInsets.all(ASizes.defaultSpace),
              child: Column(
                children: [
                  //Banner and Slider
                  PromoSlider(banners: [AImages.promobanner1, AImages.promobanner2,AImages.promobanner3,],),
                  const SizedBox(height: ASizes.spaceBtwSections),
                  // Populer Products
                  GridLayout(
                    itemCount: 6,
                    itemBuilder: (_, index) => ProductCardVertical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




