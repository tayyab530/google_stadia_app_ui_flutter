import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../core/images.dart';

class PlayCircle extends StatelessWidget {
///Creates a widget that display overlay game play icon

  final double height;
  final double width;

  const PlayCircle({Key? key, this.height = 50, this.width = 50}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: const BoxDecoration(
          gradient: RadialGradient(
            colors: [
              Colors.transparent,
              Colors.red,
            ],
            stops: [
              0,
              1
            ],
          ),
          shape: BoxShape.circle),
      child: LayoutBuilder(
        builder: (context,constraints) {
          return SvgPicture.asset(
            height: constraints.maxHeight * 0.3,
            width: constraints.maxHeight * 0.3,
            AppAssets.playIconSVG,
            fit: BoxFit.scaleDown,
          );
        }
      ),
    );
  }
}
