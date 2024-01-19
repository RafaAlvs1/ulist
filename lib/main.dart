import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ulist_project/dependencies_injection.dart';
import 'package:ulist_project/my_app.dart';
import 'package:ulist_project/utils/services/firebase.dart';

void main() {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();

    await serviceLocator();
    await FirebaseServices.init();

    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    runApp(const MyApp());
  }, (error, stackTrace) async {
    log(
      "### ERROR ::> $error",
      error: error,
      stackTrace: stackTrace,
    );
  });
}
