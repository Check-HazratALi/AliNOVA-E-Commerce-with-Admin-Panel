import 'package:alinova_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:alinova_ecommerce/common/widgets/brands/brand_card.dart';
import 'package:alinova_ecommerce/common/widgets/product/sortable/sortable_products.dart';
import 'package:alinova_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AAppbar(Title: Text('Nike'), showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ASizes.defaultSpace),
          child: Column(
            children: [
              // Brand Detail
              BrandCard(showBorder: true),
              SizedBox(height: ASizes.spaceBtwSections,),

              SortableProducts(),
            ]
          ),
        ),
      ),
    );
  }
}
