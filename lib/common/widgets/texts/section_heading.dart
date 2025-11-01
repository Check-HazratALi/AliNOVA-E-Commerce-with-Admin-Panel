import 'package:flutter/material.dart';

class sectionHeading extends StatelessWidget {
  const sectionHeading({
    super.key,
    this.textColor = Colors.white,
    required this.showActionButton,
    required this.title,
    this.buttonTitle = "View all",
    this.onPressed,
  });

  final Color? textColor;
  final bool showActionButton;
  final String title, buttonTitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(
            context,
          ).textTheme.headlineSmall!.apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Spacer(),
        if (showActionButton)
          TextButton(onPressed: onPressed, child: Text(buttonTitle)),
      ],
    );
  }
}
