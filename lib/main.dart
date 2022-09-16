import 'package:flutter/material.dart';
import 'package:stadia_app_ui/core/theme_data.dart';
import 'package:stadia_app_ui/screens/details_screen.dart';
import 'package:stadia_app_ui/screens/home_screen.dart';
import 'package:stadia_app_ui/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: CustomTheme.firstColorGradient,
      ),
      // home: LoginScreen(),
      // home: HomeScreen(),
      home: DetailsScreen(),
    );
  }
}

