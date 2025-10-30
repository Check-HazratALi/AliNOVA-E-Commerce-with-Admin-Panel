import 'package:alinova_ecommerce/features/authentication/screens/singup/widgets/terms_and_condititons.dart';
import 'package:alinova_ecommerce/utils/constants/sizes.dart';
import 'package:alinova_ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    
    return Form(
      child: Column(
        children: [
          //First Name & last Name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: ATexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: ASizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: ATexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: ASizes.spaceBtwInputFields),
    
          //Username
          TextFormField(
            decoration: const InputDecoration(
              labelText: ATexts.userName,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: ASizes.spaceBtwInputFields),
    
          //Email
          TextFormField(
            decoration: const InputDecoration(
              labelText: ATexts.firstName,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: ASizes.spaceBtwInputFields),
    
          //Phone Number
          TextFormField(
            decoration: const InputDecoration(
              labelText: ATexts.phone,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: ASizes.spaceBtwInputFields),
    
          //Password
          TextFormField(
            decoration: const InputDecoration(
              labelText: ATexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: ASizes.spaceBtwSections),
    
          //Terms & Condititons CheckBox
          TermsAndCondititons(),
          const SizedBox(height: ASizes.spaceBtwSections),
          //Sign Up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(ATexts.signup),
            ),
          ),
          const SizedBox(height: ASizes.spaceBtwSections),
        ],
      ),
    );
  }
}

