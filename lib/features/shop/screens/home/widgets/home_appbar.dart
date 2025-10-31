import 'package:alinova_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:alinova_ecommerce/common/widgets/product_cart/cart_menu_icon.dart';
import 'package:alinova_ecommerce/utils/constants/colors.dart';
import 'package:alinova_ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class AHomeAppBar extends StatelessWidget {
  const AHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AAppbar(
      Title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(ATexts.appBarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: AColors.grey),),
          Text(ATexts.appBarName, style: Theme.of(context).textTheme.headlineMedium!.apply(color: AColors.white),)
        ],
      ),
      actions: [
        ACartCunterIcon(onPressed: () {}, iconColor: Colors.white,)
      ],
    );
  }
}

