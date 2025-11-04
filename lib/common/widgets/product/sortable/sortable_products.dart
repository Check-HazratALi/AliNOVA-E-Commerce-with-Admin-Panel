import 'package:alinova_ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:alinova_ecommerce/common/widgets/product/products_cards/product_card_vertical.dart';
import 'package:alinova_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SortableProducts extends StatelessWidget {
  const SortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //DropDown
        DropdownButtonFormField(
          decoration: InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          onChanged: (value) {},
          items: ['Name','Higher price','Lower price','Sale','Newest','Popularity']
                .map((option) => DropdownMenuItem(value: option, child: Text(option)))
                .toList(),
        ),
        SizedBox(height: ASizes.spaceBtwSections),
        //Products
        GridLayout(itemCount: 6, itemBuilder: (_,index)=> ProductCardVertical())
      ],
    );
  }
}
