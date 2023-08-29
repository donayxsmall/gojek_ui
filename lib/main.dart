import 'package:flutter/material.dart';
import 'package:gojek_ui/core.dart';
import 'package:gojek_ui/core/theme/theme.dart';
import 'package:gojek_ui/state_util.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      navigatorKey: Get.navigatorKey,
      theme: getDefaultTheme(),
      home: const MainNavigationView(),
    );
  }
}
