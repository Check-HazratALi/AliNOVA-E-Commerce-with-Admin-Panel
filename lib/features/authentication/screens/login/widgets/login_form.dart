import 'package:alinova_ecommerce/features/authentication/screens/forget_password/forget_pass_screen.dart';
import 'package:alinova_ecommerce/features/authentication/screens/singup/signup.dart';
import 'package:alinova_ecommerce/navigaton_menu.dart';
import 'package:alinova_ecommerce/utils/constants/sizes.dart';
import 'package:alinova_ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: ASizes.spaceBtwSections),
        child: Column(
          children: [
            //Email
            TextFormField(
              decoration: InputDecoration(
                prefix: const Icon(Iconsax.direct_right),
                labelText: ATexts.email,
              ),
            ),
            const SizedBox(height: ASizes.spaceBtwInputFields),
        
            //Password
            TextFormField(
              decoration: InputDecoration(
                prefix: const Icon(Iconsax.password_check),
                labelText: ATexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: ASizes.spaceBtwInputFields / 2),
        
            // Remember Me & Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Remember Me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(ATexts.rememberMe),
                  ],
                ),
        
                // Forget Password
                TextButton(
                  onPressed: () => Get.to(()=>ForgetPassScreen()),
                  child: const Text(ATexts.forgetPassword),
                ),
              ],
            ),
            const SizedBox(height: ASizes.spaceBtwSections,),
        
            // Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: ()=>Get.to(()=>NavigatonMenu()), child: const Text(ATexts.signIn)),
            ),
        const SizedBox(height: ASizes.spaceBtwItems,),
            // Create Account Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: ()=> Get.to(()=>SignupScreen()), child: const Text(ATexts.createAccount)),
            ),
        
          ],
        ),
      ),
    );
  }
}
