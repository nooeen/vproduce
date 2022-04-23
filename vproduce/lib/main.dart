import 'package:flutter/material.dart';
import 'package:vproduce/theme.dart';
import 'package:vproduce/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VProduce',
      initialRoute: '/checkout/successful',
      routes: appRoutes,
      theme: appTheme,
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
    );
  }
}
