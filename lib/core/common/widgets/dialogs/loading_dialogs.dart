import 'package:e_store/core/common/widgets/dialogs/animation_loader.dart';
import 'package:e_store/core/constants/colors.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:flutter/material.dart';

void loaderDialogScreen(BuildContext context, String message, String image) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => PopScope(
      canPop: false,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: (context.theme.brightness == Brightness.dark)
            ? ColorPalette.light
            : ColorPalette.dark,
        child: Column(
          children: [
            const SizedBox(height: 250),
            // animation loader widget
            Center(
              child: Image.asset(
                image,
                height: 100,
                width: 100,
                fit: BoxFit.cover,
                alignment: Alignment.center,
                colorBlendMode: BlendMode.srcIn,
              ),
            ),
            const SizedBox(height: 250),
            // message
            Text(
              message,
              style: context.textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    ),
  );
}

closeLoaderDialogScreen(BuildContext ctx) => Navigator.of(ctx).pop();

void animatedDialogScreenLoader(
  BuildContext context,
  String message,
  String image,
) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => PopScope(
      canPop: false,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: context.isDarkMode ? ColorPalette.dark : ColorPalette.light,
        child: Column(
          children: [
            SizedBox(height: 250),
            // animation loader widget
            CenterAnimationLoaderWidget(
              animationUrl: image,
              text: message,
            )
          ],
        ),
      ),
    ),
  );
}
