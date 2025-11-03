import 'package:alinova_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:alinova_ecommerce/common/widgets/icons/a_circular_icon.dart';
import 'package:alinova_ecommerce/common/widgets/images/rounded_images.dart';
import 'package:alinova_ecommerce/common/widgets/product/cart/cartItem.dart';
import 'package:alinova_ecommerce/common/widgets/product/cart/product_quantity.dart';
import 'package:alinova_ecommerce/common/widgets/texts/brand_title_with_verify.dart';
import 'package:alinova_ecommerce/common/widgets/texts/product_price.dart';
import 'package:alinova_ecommerce/common/widgets/texts/producttitle_text.dart';
import 'package:alinova_ecommerce/utils/constants/colors.dart';
import 'package:alinova_ecommerce/utils/constants/image_strings.dart';
import 'package:alinova_ecommerce/utils/constants/sizes.dart';
import 'package:alinova_ecommerce/utils/helpers/healper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AAppbar(
        showBackArrow: true,
        Title: Text("Cart", style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: Padding(
        padding: EdgeInsets.all(ASizes.defaultSpace),
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: 14,
          separatorBuilder: (_, __) =>
              SizedBox(height: ASizes.spaceBtwSections),
          itemBuilder: (_, index) => Column(
            children: [
              CartIem(),
              SizedBox(height: ASizes.spaceBtwItems),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [SizedBox(width: 70), ProductQuantitywithAdd()],
                  ),
      
                  // Product total Price
                  ProductPriceText(price: '256'),
                ],
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: ElevatedButton(onPressed: (){}, child: Text('Checkout')),
    );
  }
}
