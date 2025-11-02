import 'package:alinova_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:alinova_ecommerce/features/shop/screens/product_details/widgets/bottom_add_to_card.dart';
import 'package:alinova_ecommerce/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:alinova_ecommerce/features/shop/screens/product_details/widgets/product_details_image_slider.dart';
import 'package:alinova_ecommerce/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:alinova_ecommerce/features/shop/screens/product_details/widgets/rating_and_share.dart';
import 'package:alinova_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    // final dark = AHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: BottomAddToCard(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Product Image Slider
            ProductDetailsImageSlider(),

            // Product details
            Padding(
              padding: EdgeInsets.only(
                right: ASizes.defaultSpace,
                left: ASizes.defaultSpace,
                bottom: ASizes.defaultSpace,
              ),
              child: Column(
                children: [
                  //Rating
                  RatingAndShare(),

                  // Price, Title, Stock & Brand
                  ProductMetaData(),

                  // Attributes
                  ProductAttributes(),
                  SizedBox(height: ASizes.spaceBtwSections),
                  
                  // Checkout Button
                  SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: Text(' Checkout'))),
                  SizedBox(height: ASizes.spaceBtwSections),

                  // Description
                  sectionHeading(title: 'Description' ,showActionButton: false,),
                  SizedBox(height: ASizes.spaceBtwItems),
                  ReadMoreText(
                    'This is a Product Decription for Blue Nike Sleeve less vest, This is a Product Decription for Blue Nike Sleeve less vestThis is a Product Decription for Blue Nike Sleeve less vest',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show More',
                    trimExpandedText: ' Less',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  //Reviews

                  Divider(),
                  SizedBox(height: ASizes.spaceBtwItems,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      sectionHeading(title: 'Review (199)', showActionButton: false,),
                      IconButton(onPressed: (){}, icon: Icon(Iconsax.arrow_right_3, size: 18,)),
                    ],
                  ),
                  SizedBox(height: ASizes.spaceBtwSections,)


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

