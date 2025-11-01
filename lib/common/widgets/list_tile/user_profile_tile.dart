
import 'package:alinova_ecommerce/common/widgets/images/circular_images.dart';
import 'package:alinova_ecommerce/features/presonalization/screens/profile/profile.dart';
import 'package:alinova_ecommerce/utils/constants/colors.dart';
import 'package:alinova_ecommerce/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class UserProfileTitle extends StatelessWidget {
  const UserProfileTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircularImage(
        image: AImages.darkApplogo,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text("Hazrat Ali",style: Theme.of(context).textTheme.headlineSmall!.apply(color: AColors.white),),
      subtitle: Text("checkhazratali@gmail.com",style: Theme.of(context).textTheme.bodyMedium!.apply(color: AColors.white),),
      trailing: IconButton(onPressed: ()=> Get.to(()=>ProfileScreen()), icon: Icon(Iconsax.edit, color: AColors.white,)),
    );
  }
}