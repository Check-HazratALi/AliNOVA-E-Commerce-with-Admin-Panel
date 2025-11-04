import 'package:alinova_ecommerce/common/widgets/product/cart/cartItem.dart';
import 'package:alinova_ecommerce/common/widgets/product/cart/product_quantity.dart';
import 'package:alinova_ecommerce/common/widgets/texts/product_price.dart';
import 'package:alinova_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CartItems extends StatelessWidget {
  const CartItems({super.key, this.showAddRemoveButton= true});

  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 2,
      separatorBuilder: (_, __) => SizedBox(height: ASizes.spaceBtwSections),
      itemBuilder: (_, index) => Column(
        children: [
          CartIem(),
          if(showAddRemoveButton) const SizedBox(height: ASizes.spaceBtwItems),
          
          if(showAddRemoveButton)
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: 70), 
                  ProductQuantitywithAdd()
                ],
              ),

              // Product total Price
              ProductPriceText(price: '256'),
            ],
          ),
        ],
      ),
    );
  }
}
