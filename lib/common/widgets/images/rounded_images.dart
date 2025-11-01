import 'package:alinova_ecommerce/utils/constants/colors.dart';
import 'package:alinova_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class RoundedImages extends StatelessWidget {
  const RoundedImages({
    super.key,
    this.width,
    this.height,
    required this.imageUrl,
    this.applyImageRadious = true,
    this.Border,
    this.backgroundColor = AColors.light,
    this.fit = BoxFit.contain,
    this.padding,
    this.isNetworkImage = false,
    this.onPressed, 
    this.borderRadius=ASizes.md,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadious;
  final BoxBorder? Border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        padding: padding,
        decoration: BoxDecoration(
          border: Border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
          borderRadius: applyImageRadious ? BorderRadiusGeometry.circular(borderRadius) : BorderRadius.zero,
          child: Image(
            fit: fit,
            image: isNetworkImage ? NetworkImage(imageUrl) :AssetImage(imageUrl) as ImageProvider,
            
          ),
        ),
      ),
    );
  }
}
