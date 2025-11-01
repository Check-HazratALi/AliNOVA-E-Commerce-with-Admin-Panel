import 'package:alinova_ecommerce/common/widgets/custom_shapes/containers/primaryheader_container.dart';
import 'package:alinova_ecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:alinova_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:alinova_ecommerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:alinova_ecommerce/features/shop/screens/home/widgets/home_categories.dart';
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
                  ASearchBox(
                    text: 'Search in Store',
                  ),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

