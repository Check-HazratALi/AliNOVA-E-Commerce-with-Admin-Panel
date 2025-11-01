import 'package:alinova_ecommerce/utils/constants/colors.dart';
import 'package:alinova_ecommerce/utils/device/device_utility.dart';
import 'package:alinova_ecommerce/utils/helpers/healper_function.dart';
import 'package:flutter/material.dart';

class ATabBar extends StatelessWidget implements PreferredSizeWidget {
  const ATabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? AColors.black : AColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: AColors.primary,
        labelColor: dark ? AColors.white : AColors.primary,
        unselectedLabelColor: AColors.darkGrey
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(ADeviceUtils.getAppBarHeight());
}
