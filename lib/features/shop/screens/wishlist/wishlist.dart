import 'package:alinova_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:alinova_ecommerce/common/widgets/icons/a_circular_icon.dart';
import 'package:alinova_ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:alinova_ecommerce/common/widgets/product/products_cards/product_card_vertical.dart';
import 'package:alinova_ecommerce/features/shop/screens/home/home.dart';
import 'package:alinova_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class FavouriteScreen  extends StatelessWidget {
  const FavouriteScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AAppbar(
        Title: Text("Wishlist", style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          CircularIcon(
            icon: Iconsax.add,
            onPressed: ()=> Get.to(HomeScreen()),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ASizes.defaultSpace),
          child: Column(
            children: [
              GridLayout(
                itemCount: 6, 
                itemBuilder: (_, index)=>ProductCardVertical()
              ),
            ],
          ),
        ),
      ),
    );
  }
}