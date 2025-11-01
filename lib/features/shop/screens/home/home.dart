import 'package:alinova_ecommerce/common/widgets/custom_shapes/containers/primaryheader_container.dart';
import 'package:alinova_ecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:alinova_ecommerce/common/widgets/image_text_widgets.dart/vertical_image_text.dart';
import 'package:alinova_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:alinova_ecommerce/features/shop/screens/home/widgets/home_appbar.dart';
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
                    showBackground: true,
                    showBorder: true,
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

                        SizedBox(
                          height: 80,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 16,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (_, index) {
                              return AVerticalImageText(
                                image: '', 
                                title: 'Shoes', 
                                onTap: () {},
                              );
                            },
                          ),
                        ),
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

