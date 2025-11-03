import 'package:alinova_ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

class RatingBarIndicatorr extends StatelessWidget {
  const RatingBarIndicatorr({
    super.key, required this.rating,
  });

  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rating,
      itemBuilder: (context, index) =>
          Icon(Iconsax.star1, color: AColors.primary),
      itemSize: 20.0,
      unratedColor: AColors.grey,
    );
  }
}