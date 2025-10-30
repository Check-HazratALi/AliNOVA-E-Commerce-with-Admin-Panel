import 'package:alinova_ecommerce/utils/constants/colors.dart';
import 'package:alinova_ecommerce/utils/constants/sizes.dart';
import 'package:alinova_ecommerce/utils/constants/text_strings.dart';
import 'package:alinova_ecommerce/utils/helpers/healper_function.dart';
import 'package:flutter/material.dart';

class TermsAndCondititons extends StatelessWidget {
  const TermsAndCondititons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        const SizedBox(width: ASizes.spaceBtwItems),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '${ATexts.iAgreeTo} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: ATexts.privacyPolicy,
                style: Theme.of(context).textTheme.bodyMedium!
                    .apply(
                      color: dark
                          ? AColors.white
                          : AColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark
                          ? AColors.white
                          : AColors.primary,
                    ),
              ),
              TextSpan(
                text: ' ${ATexts.and} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: ATexts.termsOfUse,
                style: Theme.of(context).textTheme.bodyMedium!
                    .apply(
                      color: dark
                          ? AColors.white
                          : AColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark
                          ? AColors.white
                          : AColors.primary,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
