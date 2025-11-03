import 'package:alinova_ecommerce/common/styles/rounded_container.dart';
import 'package:alinova_ecommerce/common/widgets/product/rating/rating_bar_indicator.dart';
import 'package:alinova_ecommerce/utils/constants/colors.dart';
import 'package:alinova_ecommerce/utils/constants/image_strings.dart';
import 'package:alinova_ecommerce/utils/constants/sizes.dart';
import 'package:alinova_ecommerce/utils/helpers/healper_function.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(AImages.facebook),
                ),
                const SizedBox(width: ASizes.spaceBtwItems),
                Text("John Doe", style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        const SizedBox(width: ASizes.spaceBtwItems),

        //Review
        Row(
          children: [
            const RatingBarIndicatorr(rating: 4),
            const SizedBox(width: ASizes.spaceBtwItems),
            Text("01 Nov 2023", style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(width: ASizes.spaceBtwItems),
        ReadMoreText(
          " In this Flutter tutorial, we'll dive into the art .Moreover,  interfaces and advanced UI components",
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimCollapsedText: "show more",
          trimExpandedText: "show less",
          moreStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: AColors.primary,
          ),
          lessStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: AColors.primary,
          ),
        ),
        const SizedBox(width: ASizes.spaceBtwItems),

        //Company Review
        ARoundedContainer(
          backgroundColor: dark ? AColors.darkerGrey : AColors.grey,
          child: Padding(
            padding: EdgeInsets.all(ASizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Alinova Shop",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      "02 Nov, 2023",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                SizedBox(height: ASizes.spaceBtwItems),
                ReadMoreText(
                  " In this Flutter tutorial, we'll dive into the art of designing a captivating Profile Screen UI. You'll learn to implement a Flutter Rating Bar and create an engaging Review Page. We'll explore how to integrate a sleek Rating Star feature that provides user feedback. To enhance user experience, we'll incorporate a Linear Progress Indicator and Linear Progress Bar for a modern and dynamic look. Moreover, you'll discover how to add a Read Moretext option for expanded content. This tutorial is a part of our ongoing series on Flutter Ecommerce App development, focusing on user-friendly interfaces and advanced UI components",
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: "show more",
                  trimExpandedText: "show less",
                  moreStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: AColors.primary,
                  ),
                  lessStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: AColors.primary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
