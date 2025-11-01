import 'package:alinova_ecommerce/common/widgets/custom_shapes/containers/custom_container.dart';
import 'package:alinova_ecommerce/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:alinova_ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class APrimaryHeaderContainer extends StatelessWidget {
  const APrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ACurvedEdgeWidget(
      child: Container(
        color: AColors.primary,
        padding: EdgeInsets.all(0),
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -250,
              child: ACircularContainer(
                backgroundColor: AColors.textWhite.withOpacity(0.1),
              ),
            ),
            Positioned(
              top: 100,
              right: 300,
              child: ACircularContainer(
                backgroundColor: AColors.textWhite.withOpacity(0.1),
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}


