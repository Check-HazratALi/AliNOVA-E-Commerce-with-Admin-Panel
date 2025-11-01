import 'package:alinova_ecommerce/common/widgets/banners/banner_images.dart';
import 'package:alinova_ecommerce/common/widgets/custom_shapes/containers/custom_container.dart';
import 'package:alinova_ecommerce/features/shop/controllers/home_controller.dart';
import 'package:alinova_ecommerce/utils/constants/colors.dart';
import 'package:alinova_ecommerce/utils/constants/sizes.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({
    super.key, 
    required this.banners,
  });

 final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          items: banners.map((url) => BannerImages(imageUrl: url)).toList(),
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index,_)=> controller.updatePageIndicator(index)
          ),
        ),
        const SizedBox(height: ASizes.spaceBtwItems),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for(int i = 0; i<banners.length; i++) 
                ACircularContainer(
                  width: 20,
                  height: 4,
                  margin: EdgeInsets.only(right: 10) ,
                  backgroundColor: controller.CarouselCurrentIndex.value == i
                    ? AColors.primary
                    : AColors.grey
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
