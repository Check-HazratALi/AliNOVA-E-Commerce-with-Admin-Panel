import 'package:alinova_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BillingAmountSection extends StatelessWidget {
  const BillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //SubTotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal',style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$256.0',style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        SizedBox(height: ASizes.spaceBtwItems/2),

        //Shipping Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Fee',style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$6.0',style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),
        SizedBox(height: ASizes.spaceBtwItems/2),

        //Tax Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax Fee',style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$6.0',style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),
        SizedBox(height: ASizes.spaceBtwItems/2),

        //Order Total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order total',style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$6.0',style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),
        SizedBox(height: ASizes.spaceBtwItems/2),
      ],
    );
  }
}