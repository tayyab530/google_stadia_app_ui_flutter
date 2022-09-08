import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../core/images.dart';

class TopLogoSVG extends StatelessWidget {
  const TopLogoSVG({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      padding: EdgeInsets.only(bottom: screenHeight * 0.1),
      height: screenHeight * 0.4,
      child: Transform.scale(
          scale: (screenWidth * 0.05) / 6,
          child: Transform.translate(
            offset: Offset(0, -50 + (screenHeight * 0.02)),
            child: Transform.rotate(
              angle: -(pi / 5.5),
              child: SvgPicture.asset(
                AppAssets.logoSvg,
                height: 280,
              ),
            ),
          )),
    );
  }
}
