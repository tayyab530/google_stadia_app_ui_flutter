import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stadia_app_ui/core/images.dart';
import 'package:stadia_app_ui/core/theme_data.dart';
import 'package:stadia_app_ui/widgets/controller_logo.dart';
import 'package:stadia_app_ui/widgets/inputfields_button.dart';
import 'package:stadia_app_ui/widgets/top_stadia_logo.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {


  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            //Top stadia logo svg
            TopLogoSVG(),
            //middle controller and logo images
            ControllerAndLogoImage(),
            //login fields and button
            InputFieldsAndButton(),
          ],
        ),
      ),
    );
  }


}
