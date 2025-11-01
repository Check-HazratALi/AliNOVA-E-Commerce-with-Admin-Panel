import 'package:alinova_ecommerce/common/styles/rounded_container.dart';
import 'package:alinova_ecommerce/common/widgets/images/circular_images.dart';
import 'package:alinova_ecommerce/common/widgets/texts/brand_title_with_verify.dart';
import 'package:alinova_ecommerce/utils/constants/enums.dart';
import 'package:alinova_ecommerce/utils/constants/image_strings.dart';
import 'package:alinova_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({super.key, required this.showBorder, this.onTap});

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ARoundedContainer(
        padding: EdgeInsets.all(ASizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            //Icon
            Flexible(
              child: CircularImage(
                isNetworkImage: false,
                image: AImages.facebook,
                backgroundColor: Colors.transparent,
              ),
            ),
            SizedBox(height: ASizes.spaceBtwItems / 2),

            //Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BrandTitleTextWithVerification(
                    title: "Nike",
                    BrandTextSize: TextSizes.medium,
                  ),
                  Text(
                    "256 products adsfafasd adsf ",
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
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
