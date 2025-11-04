import 'package:alinova_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:alinova_ecommerce/features/shop/screens/cart/widgets/cart_item.dart';
import 'package:alinova_ecommerce/features/shop/screens/checkout/checkout.dart';
import 'package:alinova_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        child: CartItems()
      ),

      bottomNavigationBar: ElevatedButton(onPressed: ()=> Get.to(()=>CheckoutScreen()), child: Text('Checkout')),
    );
  }
}
