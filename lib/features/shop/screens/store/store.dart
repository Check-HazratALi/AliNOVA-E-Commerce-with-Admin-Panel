import 'package:alinova_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:alinova_ecommerce/common/widgets/product/cart/cart_menu_icon.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AAppbar(
        Title: Text("Store"),
        actions: [
          ACartCunterIcon(
            onPressed: (){},
            iconColor: Colors.white,             
          )
        ],
      ),
    );
  }
}