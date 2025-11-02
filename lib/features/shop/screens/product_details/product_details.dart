import 'package:alinova_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:alinova_ecommerce/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:alinova_ecommerce/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:alinova_ecommerce/common/widgets/icons/a_circular_icon.dart';
import 'package:alinova_ecommerce/common/widgets/images/rounded_images.dart';
import 'package:alinova_ecommerce/features/shop/screens/product_details/widgets/product_details_image_slider.dart';
import 'package:alinova_ecommerce/utils/constants/colors.dart';
import 'package:alinova_ecommerce/utils/constants/image_strings.dart';
import 'package:alinova_ecommerce/utils/constants/sizes.dart';
import 'package:alinova_ecommerce/utils/helpers/healper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    // final dark = AHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Product Image Slider
            ProductDetailsImageSlider(),

            // Product details

          ],
        ),
      ),
    );
  }
}
