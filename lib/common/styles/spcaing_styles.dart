import 'package:alinova_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/rendering.dart';

class ASpacingStyle{
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: ASizes.appBarHeight,
    left: ASizes.defaultSpace,
    bottom: ASizes.defaultSpace,
    right: ASizes.defaultSpace
  );
}