import 'package:flutter/material.dart';

import '../core/theme_data.dart';

class ProfileAvatar extends StatelessWidget {
  final String imagePath;
  final double radius;

  const ProfileAvatar({Key? key, required this.imagePath, this.radius = 40.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(radius * 0.4),
        border: Border.all(width: 1, color: CustomTheme.whiteColor),
        image: DecorationImage(
          image: AssetImage(
            imagePath,
          ),
          fit: BoxFit.cover,
        ),
      ),
      height: radius,
      width: radius,
      clipBehavior: Clip.hardEdge,
    );
  }
}
