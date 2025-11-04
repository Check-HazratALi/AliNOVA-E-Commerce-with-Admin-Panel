import 'package:alinova_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:alinova_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BillingAddressSection extends StatelessWidget {
  const BillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        sectionHeading(
          title: 'Shipping Address',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        Text('Hazrat ALi', style: Theme.of(context).textTheme.bodyLarge),

        Row(
          children: [
            Icon(Icons.phone, color: Colors.grey, size: 16),
            SizedBox(width: ASizes.spaceBtwItems,),
            Text("+880 130 7564 4445", style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        SizedBox(width: ASizes.spaceBtwItems/2),
        Row(
          children: [
            Icon(Icons.history, color: Colors.grey, size: 16),
            SizedBox(width: ASizes.spaceBtwItems,),
            Expanded(child: Text("Hemayetpu, Savar, Dhaka, BD", style: Theme.of(context).textTheme.bodyMedium)),
          ],
        ),
      ],
    );
  }
}
