import 'package:alinova_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:alinova_ecommerce/common/widgets/custom_shapes/containers/primaryheader_container.dart';
import 'package:alinova_ecommerce/common/widgets/list_tile/settings_menu_tile.dart';
import 'package:alinova_ecommerce/common/widgets/list_tile/user_profile_tile.dart';
import 'package:alinova_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:alinova_ecommerce/features/presonalization/screens/address/address.dart';
import 'package:alinova_ecommerce/features/shop/screens/cart/cart.dart';
import 'package:alinova_ecommerce/features/shop/screens/order/order.dart';
import 'package:alinova_ecommerce/utils/constants/colors.dart';
import 'package:alinova_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Header
            APrimaryHeaderContainer(
              child: Column(
                children: [
                  //AppBar
                  AAppbar(
                    Title: Text(
                      "Account",
                      style: Theme.of(
                        context,
                      ).textTheme.headlineMedium!.apply(color: AColors.white),
                    ),
                  ),

                  //User Profile
                  UserProfileTitle(),
                  const SizedBox(height: ASizes.spaceBtwSections),
                ],
              ),
            ),

            //--Body
            Padding(
              padding: EdgeInsets.all(ASizes.defaultSpace),
              child: Column(
                children: [
                  //Account Setting
                  sectionHeading(
                    title: "Account Settings",
                    showActionButton: false,
                  ),
                  SizedBox(height: ASizes.spaceBtwItems),

                  SettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My Addresses',
                    subTitle: 'Set shopping delivery address',
                    onTap: () => Get.to(()=> UserAddressScreen()),
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subTitle: 'Set shopping delivery address',
                    onTap: () => Get.to(()=> CartScreen())
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subTitle: 'Set shopping delivery address',
                    onTap: () => Get.to(()=> OrderScreen()),
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.bank,
                    title: 'Bank Account',
                    subTitle: 'Set shopping delivery address',
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subTitle: 'Set shopping delivery address',
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.notification,
                    title: 'Notifications',
                    subTitle: 'Set shopping delivery address',
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.security_card,
                    title: 'Account Privacy',
                    subTitle: 'Set shopping delivery address',
                    onTap: () {},
                  ),

                  SizedBox(height: ASizes.spaceBtwSections),
                  sectionHeading(
                    title: "App Settings",
                    showActionButton: false,
                  ),
                  SizedBox(height: ASizes.spaceBtwItems),
                  SettingsMenuTile(
                    icon: Iconsax.document_upload,
                    title: 'Load Data',
                    subTitle: 'Set shopping delivery address',
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subTitle: 'Set shopping delivery address',
                    tralling: Switch(value: true, onChanged: (value) {}),
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subTitle: 'Set shopping delivery address',
                    tralling: Switch(value: false, onChanged: (value) {}),
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.image,
                    title: 'HD Image Quality',
                    subTitle: 'Set shopping delivery address',
                    tralling: Switch(value: false, onChanged: (value) {}),
                  ),

                  //LogOut BUtton
                  SizedBox(height: ASizes.spaceBtwSections,),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: (){}, child: Text("Logout")),
                  ),
                  SizedBox(height: ASizes.spaceBtwSections * 2.5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
