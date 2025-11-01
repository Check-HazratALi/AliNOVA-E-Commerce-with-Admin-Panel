import 'package:alinova_ecommerce/features/shop/screens/home/home.dart';
import 'package:alinova_ecommerce/features/shop/screens/store/store.dart';
import 'package:alinova_ecommerce/features/shop/screens/wishlist/wishlist.dart';
import 'package:alinova_ecommerce/utils/constants/colors.dart';
import 'package:alinova_ecommerce/utils/helpers/healper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:iconsax/iconsax.dart';

class NavigatonMenu extends StatelessWidget {
  const NavigatonMenu({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(NavigationController());
    final darkmode = AHelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        ()=> NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index)=> controller.selectedIndex.value =index,
          backgroundColor: darkmode ? AColors.black : Colors.white,
          indicatorColor: darkmode ? AColors.white.withOpacity(0.1) : AColors.black.withOpacity(0.1),
          destinations: [
            NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
            NavigationDestination(icon: Icon(Iconsax.shop), label: "Store"),
            NavigationDestination(icon: Icon(Iconsax.heart), label: "Wishlist"),
            NavigationDestination(icon: Icon(Iconsax.user), label: "Profile"),
          ],
        ),
      ),
      body: Obx(()=> controller.screnns[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;

  final screnns = [
    HomeScreen(),
    StoreScreen(),
    FavouriteScreen(),
    Container(color: Colors.yellow,),
  ];
}