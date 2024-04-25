import 'package:e_store/core/routes/app_router.dart';
import 'package:e_store/estore_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'core/di/dependency_inject.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await initializeDependence();
  runApp(
    EStoreApp(router: AppRouter()),
  );
}
