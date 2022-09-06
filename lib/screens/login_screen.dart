import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stadia_app_ui/core/images.dart';
import 'package:stadia_app_ui/core/theme_data.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var _inputHeight = 46.0;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // color: CustomTheme.secondColorGradient,
              height: 270,
              child: Transform.scale(
                  scale: 2.3,
                  child: Transform.translate(
                    offset: const Offset(0, -50),
                    child: Transform.rotate(
                      angle: -(pi / 5.5),
                      child: SvgPicture.asset(
                        AppAssets.logoSvg,
                        height: 280,
                      ),
                    ),
                  )),
            ),
            Container(
              height: 200,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Positioned(
                      bottom: 40,
                      child: Image.asset(
                        AppAssets.controllerImage,
                        height: 150,
                      )),
                  Positioned(
                      bottom: 3,
                      child: Image.network(AppAssets.logoWithNamePNGNetwork,
                          height: 100)),
                ],
              ),
            ),
            Container(
              padding:
                  const EdgeInsets.only(left: 40.0, right: 40.0, bottom: 20.0),
              // color: Colors.orange,
              height: 202,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: CustomTheme.textFieldColor,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    height: _inputHeight,
                    // padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "User Name",
                        hintStyle: TextStyle(
                            color: CustomTheme.textFieldHintColor,
                            fontSize: CustomTheme.hintTextSize),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: CustomTheme.textFieldColor,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    height: _inputHeight,
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Password",
                        hintStyle: TextStyle(
                          color: CustomTheme.textFieldHintColor,
                          fontSize: CustomTheme.hintTextSize,
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      ),
                    ),
                  ),
                  // SizedBox(height: 27.0,),
                  const Spacer(),
                  Container(
                    height: _inputHeight,
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          CustomTheme.secondColorGradient,
                          CustomTheme.firstColorGradient,
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: const Text(
                      "SING IN",
                      style: TextStyle(
                        color: CustomTheme.whiteColor,
                        fontWeight: FontWeight.bold,
                        fontSize: CustomTheme.buttonTextSize,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
