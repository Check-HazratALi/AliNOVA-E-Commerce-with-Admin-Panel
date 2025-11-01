import 'package:alinova_ecommerce/common/widgets/texts/brand_title_text.dart';
import 'package:alinova_ecommerce/utils/constants/colors.dart';
import 'package:alinova_ecommerce/utils/constants/enums.dart';
import 'package:alinova_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BrandTitleTextWithVerification extends StatelessWidget {
  const BrandTitleTextWithVerification({
    super.key,
    required this.title,
    this.maxLines=1,
    this.textColor,
    this.iconColor,
    this.textAlign,
    this.BrandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes BrandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: BrandTitleText(
            title: title, 
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: BrandTextSize,
          ),
        ),
        SizedBox(width: ASizes.xs),
        Icon(Iconsax.verify5, color: AColors.primary, size: ASizes.iconXs),
      ],
    );
  }
}