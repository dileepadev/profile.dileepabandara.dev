import 'package:flutter/material.dart';

import 'statics/data_values.dart';
import 'theme/app_theme_data.dart';
import 'page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: DataValues.appName,
      theme: AppThemeData.themeData,
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
