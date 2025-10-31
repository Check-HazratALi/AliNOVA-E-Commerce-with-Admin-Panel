import 'package:alinova_ecommerce/features/authentication/screens/forget_password/resetpass_email.dart';
import 'package:alinova_ecommerce/features/authentication/screens/login/login.dart';
import 'package:alinova_ecommerce/utils/constants/sizes.dart';
import 'package:alinova_ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassScreen extends StatelessWidget {
  const ForgetPassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => Login()),
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ASizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title SubTitle
              Text(
                ATexts.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: ASizes.spaceBtwItems),
              Text(
                ATexts.forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(height: ASizes.spaceBtwSections),

              //Forget Password Form
              TextFormField(
                decoration: InputDecoration(
                  prefix: const Icon(Iconsax.direct_right),
                  labelText: ATexts.email,
                ),
              ),
              const SizedBox(height: ASizes.spaceBtwSections),

              //Button
              SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: ()=> Get.to(()=>ResetpassEmail()), child: const Text(ATexts.submitButton)),
            ),

            ],
          ),
        ),
      ),
    );
  }
}
