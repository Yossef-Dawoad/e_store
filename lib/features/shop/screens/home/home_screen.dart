import 'package:e_store/core/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import 'widgets/header_shape.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = ECHelperFunctions.screenHeight(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            ClipReverseBottomSheetShape(
              height: screenHeight * 0.4,
              width: double.maxFinite,
              child: const Column(
                children: [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
