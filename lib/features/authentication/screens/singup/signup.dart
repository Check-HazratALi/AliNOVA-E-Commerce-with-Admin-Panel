import 'package:alinova_ecommerce/common/widgets/login_signUp/form_divider.dart';
import 'package:alinova_ecommerce/common/widgets/login_signUp/social_buttons.dart';
import 'package:alinova_ecommerce/features/authentication/screens/singup/widgets/signup_form.dart';
import 'package:alinova_ecommerce/utils/constants/sizes.dart';
import 'package:alinova_ecommerce/utils/constants/text_strings.dart';
import 'package:alinova_ecommerce/utils/helpers/healper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ASizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                ATexts.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: ASizes.spaceBtwSections),

              //Form
              SignUpForm(),

              //Divider
              FormDivider(
                dark: dark,
                dividerText: ATexts.orSignUpWith.capitalize!,
              ),
              const SizedBox(height: ASizes.spaceBtwSections),

              //Footer
              SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

