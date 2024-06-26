import 'package:flutter/material.dart';
import 'package:food_d_app/auth/login_or_register.dart';
import 'package:food_d_app/pages/login_Page.dart';
import 'package:food_d_app/themes/dark_theme.dart';
import 'package:food_d_app/themes/light_theme.dart';
import 'package:food_d_app/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: LoginOrRegister(),

    );
  }
}
