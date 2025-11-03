import 'package:alinova_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:alinova_ecommerce/common/widgets/product/rating/rating_bar_indicator.dart';
import 'package:alinova_ecommerce/features/shop/screens/product_reviews/widgets/rating_product_indicator.dart';
import 'package:alinova_ecommerce/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:alinova_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar
      appBar: AAppbar(Title: Text("Review & Ratings"),showBackArrow: true,),

      //Body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ASizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Rating In this comprehensive Flutter eCommerce app UI design tutorial, we'll dive into the intricacies of designing a captivating Ratings and Reviews screen in Flutter.",
              ),
              const SizedBox(height: ASizes.spaceBtwItems),

              //Overall Product Ratings
              const OverallProductRating(),
              const RatingBarIndicatorr(rating: 4.5,),
              Text("12,611", style: Theme.of(context).textTheme.bodySmall,),
              const SizedBox(height: ASizes.spaceBtwSections,),


              //User Review List
              UserReviewCard(),
              const SizedBox(height: ASizes.spaceBtwItems),
              UserReviewCard(),
              const SizedBox(height: ASizes.spaceBtwItems),
              UserReviewCard(),


            ],
          ),
        ),
      ),
    );
  }
}


