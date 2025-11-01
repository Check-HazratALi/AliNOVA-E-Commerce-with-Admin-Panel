import 'package:alinova_ecommerce/common/styles/rounded_container.dart';
import 'package:alinova_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:alinova_ecommerce/common/widgets/appbar/tapbar.dart';
import 'package:alinova_ecommerce/common/widgets/brands/brand_card.dart';
import 'package:alinova_ecommerce/common/widgets/brands/brand_show_case.dart';
import 'package:alinova_ecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:alinova_ecommerce/common/widgets/images/circular_images.dart';
import 'package:alinova_ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:alinova_ecommerce/common/widgets/product/cart/cart_menu_icon.dart';
import 'package:alinova_ecommerce/common/widgets/texts/brand_title_with_verify.dart';
import 'package:alinova_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:alinova_ecommerce/features/shop/screens/store/widgets.dart/category_tab.dart';
import 'package:alinova_ecommerce/utils/constants/colors.dart';
import 'package:alinova_ecommerce/utils/constants/enums.dart';
import 'package:alinova_ecommerce/utils/constants/image_strings.dart';
import 'package:alinova_ecommerce/utils/constants/sizes.dart';
import 'package:alinova_ecommerce/utils/helpers/healper_function.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AHelperFunctions.isDarkMode(context);

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AAppbar(
          Title: Text("Store"),
          actions: [ACartCunterIcon(onPressed: () {}, iconColor: Colors.white)],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: AHelperFunctions.isDarkMode(context)
                    ? AColors.black
                    : AColors.white,
                expandedHeight: 440,

                flexibleSpace: Padding(
                  padding: EdgeInsets.all(ASizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      //Search Bar
                      SizedBox(height: ASizes.spaceBtwItems),
                      ASearchBox(
                        text: 'Search in Store',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      SizedBox(height: ASizes.spaceBtwSections),

                      //Featured Brands
                      sectionHeading(
                        title: "Featured Brands",
                        onPressed: () {},
                      ),
                      SizedBox(height: ASizes.spaceBtwItems / 1.5),

                      //Brands Grid
                      GridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return BrandCard(showBorder: true);
                        },
                      ),
                    ],
                  ),
                ),

                //Tools
                bottom: ATabBar(
                  tabs: [
                    Tab(child: Text("Sports")),
                    Tab(child: Text("Cricket")),
                    Tab(child: Text("Sports")),
                    Tab(child: Text("Creicket")),
                    Tab(child: Text("Sports")),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}

