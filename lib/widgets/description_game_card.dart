import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stadia_app_ui/core/theme_data.dart';
import 'package:stadia_app_ui/widgets/profile_avatar.dart';

import '../core/images.dart';

class DescriptionGameCard extends StatelessWidget {
  final String bgImagePath;

  const DescriptionGameCard({Key? key, required this.bgImagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Card(
          // margin: EdgeInsets.symmetric(
          //     horizontal: 5, vertical: 25),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          clipBehavior: Clip.hardEdge,
          child: Image.asset(
            bgImagePath,
          ),
        ),
        Container(
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
              gradient: RadialGradient(
                colors: [
                  Colors.transparent,
                  Colors.red,
                ],
              ),
              shape: BoxShape.circle),
          child: SizedBox(
              height: 15,
              width: 15,
              child: SvgPicture.asset(
                AppAssets.playIconSVG,
                fit: BoxFit.fill,
              )),
        ),
      ],
    );
  }
}
