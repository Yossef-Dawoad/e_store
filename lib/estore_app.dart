import 'package:flutter/material.dart';

import 'core/routes/app_router.dart';
import 'core/routes/routes.dart';
import 'core/theme/theme.dart';

class EStoreApp extends StatelessWidget {
  const EStoreApp({
    super.key,
    required this.router,
  });
  final AppRouter router;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      initialRoute: Routes.onBoarding,
      onGenerateRoute: router.onGenerateRoute,
    );
  }
}
