import 'package:alinova_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:alinova_ecommerce/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:alinova_ecommerce/common/widgets/icons/a_circular_icon.dart';
import 'package:alinova_ecommerce/common/widgets/images/rounded_images.dart';
import 'package:alinova_ecommerce/utils/constants/colors.dart';
import 'package:alinova_ecommerce/utils/constants/image_strings.dart';
import 'package:alinova_ecommerce/utils/constants/sizes.dart';
import 'package:alinova_ecommerce/utils/helpers/healper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductDetailsImageSlider extends StatelessWidget {
  const ProductDetailsImageSlider({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return ACurvedEdgeWidget(
      child: Container(
        color: dark ? AColors.darkerGrey : AColors.light,
        child: Stack(
          children: [
            //Main Large Image
            SizedBox(
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(ASizes.productImageRadius*2),
                child: Image(
                  image: AssetImage(
                    AImages.facebook
                  ),
                ),
              ),
            ),
    
            //Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: ASizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  itemCount: 4,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (_,__)=> SizedBox(width: ASizes.spaceBtwItems,),
                  itemBuilder: (_, index)=>RoundedImages(
                  width: 80,
                  backgroundColor: dark ? AColors.dark : AColors.light,
                  Border: Border.all(color: AColors.primary),
                  padding: EdgeInsets.all(ASizes.sm),
                  imageUrl: AImages.google,
                )
                ),
              ),
            ),
    
            //AppBar Icons
            AAppbar(
              showBackArrow: true,
              actions: [CircularIcon(icon: Iconsax.heart5, color: Colors.red,)],
            ),
          ],
        ),
      ),
    );
  }
}
