import 'package:alinova_ecommerce/common/styles/rounded_container.dart';
import 'package:alinova_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:alinova_ecommerce/utils/constants/colors.dart';
import 'package:alinova_ecommerce/utils/constants/image_strings.dart';
import 'package:alinova_ecommerce/utils/constants/sizes.dart';
import 'package:alinova_ecommerce/utils/helpers/healper_function.dart';
import 'package:flutter/material.dart';

class BillingPaymentSection extends StatelessWidget {
  const BillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        sectionHeading(
          title: 'Payment Method',
          buttonTitle: 'change',
          onPressed: () {},
        ),
        SizedBox(height: ASizes.spaceBtwItems/2),
        Row(
          children: [
            ARoundedContainer(
              width: 60,
              height: 35,
              backgroundColor:  dark ? AColors.black : AColors.white,
              padding: EdgeInsets.all(ASizes.sm),
              child: Image(image: AssetImage(AImages.facebook), fit: BoxFit.contain,),
            ),
            SizedBox(height: ASizes.spaceBtwItems/2),
            Text('Paypal', style: Theme.of(context).textTheme.bodyLarge,)
          ],
        )
      ],
    );
  }
}
