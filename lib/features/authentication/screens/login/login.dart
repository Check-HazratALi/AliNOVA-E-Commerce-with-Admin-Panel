import 'package:alinova_ecommerce/common/styles/spcaing_styles.dart';
import 'package:alinova_ecommerce/common/widgets/login_signUp/form_divider.dart';
import 'package:alinova_ecommerce/common/widgets/login_signUp/social_buttons.dart';
import 'package:alinova_ecommerce/features/authentication/screens/login/widgets/login_form.dart';
import 'package:alinova_ecommerce/features/authentication/screens/login/widgets/login_header.dart';
import 'package:alinova_ecommerce/utils/constants/sizes.dart';
import 'package:alinova_ecommerce/utils/constants/text_strings.dart';
import 'package:alinova_ecommerce/utils/helpers/healper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: ASpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //Logo, Title, SubTitle
              LoginHeader(dark: dark),

              //Form
              LoginForm(),

              //Divider
              FormDivider(dark: dark, dividerText: ATexts.createAccount.capitalize!,),
              
              const SizedBox(height: ASizes.spaceBtwSections,),
              //Footer
              SocialButtons()

            ],
          ),
        ),
      ),
    );
  }
}
