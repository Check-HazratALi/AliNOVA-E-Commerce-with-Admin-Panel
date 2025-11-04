import 'package:alinova_ecommerce/common/styles/rounded_container.dart';
import 'package:alinova_ecommerce/utils/constants/colors.dart';
import 'package:alinova_ecommerce/utils/constants/sizes.dart';
import 'package:alinova_ecommerce/utils/helpers/healper_function.dart';
import 'package:flutter/material.dart';

class CuponCode extends StatelessWidget {
  const CuponCode({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return ARoundedContainer(
      showBorder: true,
      backgroundColor: dark ? AColors.dark : AColors.white,
      padding: EdgeInsets.only(top: ASizes.sm, bottom: ASizes.sm, right: ASizes.sm, left: ASizes.md),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Have a promo Code? Enter here',
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed:() {},
              child: Text('Apply'),
              style: ElevatedButton.styleFrom(
                foregroundColor: dark ? AColors.white.withOpacity(0.5) : AColors.dark.withOpacity(0.5),
                backgroundColor: AColors.grey.withOpacity(0.2),
                side: BorderSide(color: AColors.grey.withOpacity(0.1))
              ),
            ),
          )
        ],
      ),
    );
  }
}
