import 'package:flutter/material.dart';

import '../../../../../core/common/widgets/curved_edges/reverse_bottom_sheet_edge.dart';
import '../../../../../core/constants/colors.dart';

class ClipReverseBottomSheetShape extends StatelessWidget {
  const ClipReverseBottomSheetShape({
    super.key,
    required this.height,
    required this.width,
    required this.child,
  });

  final double height;
  final double width;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ReserseBottomSheetEdge(),
      child: Container(
        color: ColorPalette.primary,
        padding: EdgeInsets.zero,
        child: SizedBox(
          height: height,
          width: width,
          child: Stack(
            children: [
              // Background cusom shapes
              Positioned(
                top: -60,
                right: -60,
                width: 200,
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: ColorPalette.textWhite.withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Positioned(
                top: -110,
                right: -110,
                width: 400,
                child: Container(
                  height: 400,
                  decoration: BoxDecoration(
                    color: ColorPalette.textWhite.withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              child
            ],
          ),
        ),
      ),
    );
  }
}
