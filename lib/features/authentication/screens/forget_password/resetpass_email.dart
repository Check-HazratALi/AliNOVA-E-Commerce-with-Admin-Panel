import 'package:alinova_ecommerce/common/widgets/success_screen.dart/success_screen.dart';
import 'package:alinova_ecommerce/features/authentication/screens/login/login.dart';
import 'package:alinova_ecommerce/features/authentication/screens/singup/verify_email.dart';
import 'package:alinova_ecommerce/utils/constants/image_strings.dart';
import 'package:alinova_ecommerce/utils/constants/sizes.dart';
import 'package:alinova_ecommerce/utils/constants/text_strings.dart';
import 'package:alinova_ecommerce/utils/helpers/healper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetpassEmail extends StatelessWidget {
  const ResetpassEmail({super.key});

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.back(),
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ASizes.defaultSpace),
          child: Column(
            children: [
              //Images
              Image(
                image: AssetImage(AImages.darkApplogo),
                width: AHelperFunctions.screenHeight() * 0.6,
              ),
              const SizedBox(height: ASizes.spaceBtwSections),

              //Title, SubTitle
              Text(
                ATexts.emailverify,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: ASizes.spaceBtwItems),
              Text(
                ATexts.emailverifysubtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: ASizes.spaceBtwSections),

              //Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(
                    () => SuccessScreen(
                      image: AImages.darkApplogo,
                      title: ATexts.verifysuccess,
                      subtitle: ATexts.successSubTitle,
                      onPressed: () => Get.to(()=>Login()),
                    ),
                  ),
                  child: const Text(ATexts.resetdone),
                ),
              ),
              const SizedBox(height: ASizes.spaceBtwItems),

              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () => Get.to(() => VerifyEmail()),
                  child: const Text(ATexts.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}