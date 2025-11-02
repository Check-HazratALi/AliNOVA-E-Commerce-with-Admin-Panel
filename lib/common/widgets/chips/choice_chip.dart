import 'package:alinova_ecommerce/common/widgets/custom_shapes/containers/custom_container.dart';
import 'package:alinova_ecommerce/utils/constants/colors.dart';
import 'package:alinova_ecommerce/utils/helpers/healper_function.dart';
import 'package:flutter/material.dart';

class Choicechip extends StatelessWidget {
  const Choicechip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {

    final isColor = AHelperFunctions.getColor(text) != null;

    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? SizedBox() :Text(text) ,
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? AColors.white : null),
        avatar: isColor
          ? ACircularContainer(width: 50,height: 50, backgroundColor: AHelperFunctions.getColor(text))
          : null,
        shape: isColor ? CircleBorder():null,
        labelPadding: isColor ? EdgeInsets.all(0):null,
        padding: isColor ? EdgeInsets.all(0):null,
        backgroundColor: isColor ? Colors.green:null,
      ),
    );
  }
}