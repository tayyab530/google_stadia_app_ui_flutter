import 'package:flutter/material.dart';

import '../core/images.dart';

class ControllerAndLogoImage extends StatelessWidget {
  const ControllerAndLogoImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight * 0.3,
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
            child: Image.network(AppAssets.logoWithNamePNGNetwork, height: 100),
          ),
        ],
      ),
    );
  }
}
