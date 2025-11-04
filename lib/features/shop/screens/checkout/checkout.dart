import 'package:alinova_ecommerce/common/styles/rounded_container.dart';
import 'package:alinova_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:alinova_ecommerce/common/widgets/product/cart/cupon_widget.dart';
import 'package:alinova_ecommerce/common/widgets/success_screen.dart/success_screen.dart';
import 'package:alinova_ecommerce/features/shop/screens/cart/widgets/cart_item.dart';
import 'package:alinova_ecommerce/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:alinova_ecommerce/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:alinova_ecommerce/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:alinova_ecommerce/navigaton_menu.dart';
import 'package:alinova_ecommerce/utils/constants/colors.dart';
import 'package:alinova_ecommerce/utils/constants/image_strings.dart';
import 'package:alinova_ecommerce/utils/constants/sizes.dart';
import 'package:alinova_ecommerce/utils/helpers/healper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AAppbar(
        showBackArrow: true,
        Title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ASizes.defaultSpace),
          child: Column(
            children: [
              //Items in cart
              const CartItems(showAddRemoveButton: false),
              SizedBox(height: ASizes.spaceBtwSections),

              //Cupon TextField
              CuponCode(),
              SizedBox(height: ASizes.spaceBtwSections),

              //Billing Section
              ARoundedContainer(
                showBorder: true,
                backgroundColor: dark ? AColors.black : AColors.white,
                padding: const EdgeInsets.all(ASizes.md),
                child: Column(
                  children: [
                    //pricing
                    BillingAmountSection(),
                    SizedBox(height: ASizes.spaceBtwItems),

                    //Divider
                    Divider(),
                    SizedBox(height: ASizes.spaceBtwItems),

                    //Payment Methods
                    BillingPaymentSection(),
                    SizedBox(height: ASizes.spaceBtwItems),

                    //Address
                    BillingAddressSection(),
                    SizedBox(height: ASizes.spaceBtwItems),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(ASizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(
            () => SuccessScreen(
              image: AImages.facebook,
              title: 'Payment Success',
              subtitle: 'Your item will be sgipped soon',
              onPressed: () => Get.offAll(()=> NavigatonMenu()),
            ),
          ),
          child: Text('Checkout \$256'),
        ),
      ),
    );
  }
}
