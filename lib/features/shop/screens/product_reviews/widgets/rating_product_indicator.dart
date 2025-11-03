import 'package:alinova_ecommerce/features/shop/screens/product_reviews/widgets/progress_indicator_rating.dart.dart';
import 'package:flutter/material.dart';

class OverallProductRating extends StatelessWidget {
  const OverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            "4.8",
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        Expanded(
          flex: 7,
          child: Column(
            children: [
              RatingProgressIndicetor(text: '5', value: 1.0,),
              RatingProgressIndicetor(text: '4', value: 0.8,),
              RatingProgressIndicetor(text: '3', value: 0.6,),
              RatingProgressIndicetor(text: '2', value: 0.4,),
              RatingProgressIndicetor(text: '1', value: 0.2,),
            ],
          ),
        ),
      ],
    );
  }
}
