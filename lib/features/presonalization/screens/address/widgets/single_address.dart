import 'package:alinova_ecommerce/common/styles/rounded_container.dart';
import 'package:alinova_ecommerce/utils/constants/colors.dart';
import 'package:alinova_ecommerce/utils/constants/sizes.dart';
import 'package:alinova_ecommerce/utils/helpers/healper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SingleAddressess extends StatelessWidget {
  const SingleAddressess({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return ARoundedContainer(
      padding:EdgeInsets.all(ASizes.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress ? AColors.primary.withOpacity(0.5) : Colors.transparent,
      borderColor: selectedAddress 
          ? Colors.transparent
          : dark
              ? AColors.darkerGrey
              : AColors.grey,
      margin: EdgeInsets.only(bottom: ASizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle : null ,
              color: selectedAddress
                  ? dark
                      ? AColors.light
                      : AColors.dark
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hazrat ALi",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: ASizes.sm/2,),
              const Text("+880 130 7564 445", maxLines: 1 ,overflow: TextOverflow.ellipsis,),
              const SizedBox(height: ASizes.sm/2,),
              const Text("Jadurchar, Hemayetpu, Savar, Dhaka, BD", softWrap: true,),
            ],
          )
        ],
      ),
    );
  }
}