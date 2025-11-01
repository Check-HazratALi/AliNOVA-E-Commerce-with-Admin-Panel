import 'package:alinova_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:alinova_ecommerce/common/widgets/images/circular_images.dart';
import 'package:alinova_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:alinova_ecommerce/features/presonalization/screens/profile/widgets/profile_menu.dart';
import 'package:alinova_ecommerce/utils/constants/image_strings.dart';
import 'package:alinova_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AAppbar(showBackArrow: true, Title: Text("Profile")),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ASizes.defaultSpace),
          child: Column(
            children: [
              //Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    CircularImage(
                      image: AImages.facebook,
                      width: 100,
                      height: 100,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text("Change Profile Picture"),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: ASizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: ASizes.spaceBtwItems),
              const sectionHeading(
                title: "Profile Information",
                showActionButton: false,
              ),
              const SizedBox(height: ASizes.spaceBtwItems),

              ProfileMenu( title: 'Name', value: 'Hazrat ALi', onPressed: () {},),
              ProfileMenu( title: 'Username', value: 'hazrat_aLi', onPressed: () {},),

              const SizedBox(height: ASizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: ASizes.spaceBtwItems),

              //Heading Personal Info
              const sectionHeading(
                title: "Profile Information",
                showActionButton: false,
              ),
              const SizedBox(height: ASizes.spaceBtwItems),

              ProfileMenu( title: 'User Id', value: '820546',icon: Iconsax.copy, onPressed: () {},),
              ProfileMenu( title: 'E-mail', value: 'checkhazratali@gmail.com', onPressed: () {},),
              ProfileMenu( title: 'Phone Number', value: '01307564445', onPressed: () {},),
              ProfileMenu( title: 'Gender', value: 'Male', onPressed: () {},),
              ProfileMenu( title: 'date of Birth', value: '02 May 2001', onPressed: () {},),
              const Divider(),
              const SizedBox(height: ASizes.spaceBtwItems),

              Center(
                child: TextButton(onPressed: (){}, child: Text("Close Account", style: TextStyle(color: Colors.red),)),
              )


            ],
          ),
        ),
      ),
    );
  }
}
