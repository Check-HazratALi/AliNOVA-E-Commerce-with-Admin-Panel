import 'package:alinova_ecommerce/common/widgets/image_text_widgets.dart/vertical_image_text.dart';
import 'package:alinova_ecommerce/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

class homeCategories extends StatelessWidget {
  const homeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 16,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return AVerticalImageText(
            image: AImages.darkApplogo, 
            title: 'Shoes', 
            onTap: () {},
          );
        },
      ),
    );
  }
}

