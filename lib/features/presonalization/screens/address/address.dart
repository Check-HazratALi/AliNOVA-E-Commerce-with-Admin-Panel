import 'package:alinova_ecommerce/common/styles/rounded_container.dart';
import 'package:alinova_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:alinova_ecommerce/features/presonalization/screens/address/add_new_address.dart';
import 'package:alinova_ecommerce/features/presonalization/screens/address/widgets/single_address.dart';
import 'package:alinova_ecommerce/utils/constants/colors.dart';
import 'package:alinova_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AColors.primary,
        onPressed: () => Get.to(()=>AddNewADDressScreen()),
        child: Icon(Iconsax.add, color: AColors.white,),
      ),
      appBar: AAppbar(
        showBackArrow: true,
        Title: Text("Addresses", style: Theme.of(context).textTheme.headlineSmall,),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ASizes.defaultSpace),
          child: Column(
            children: [
              SingleAddressess(selectedAddress: true),
              SingleAddressess(selectedAddress: false),
              SingleAddressess(selectedAddress: false),
              SingleAddressess(selectedAddress: false),
              SingleAddressess(selectedAddress: false),
              SingleAddressess(selectedAddress: false),
              SingleAddressess(selectedAddress: false),
              SingleAddressess(selectedAddress: false),
              SingleAddressess(selectedAddress: false),
              SingleAddressess(selectedAddress: false),
              SingleAddressess(selectedAddress: false)
            ],
          ),
        ),
      ),
    );
  }
}