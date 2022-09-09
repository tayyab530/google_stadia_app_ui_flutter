import 'package:flutter/material.dart';
import 'package:stadia_app_ui/widgets/profile_avatar.dart';

import '../core/images.dart';

class GameCard extends StatelessWidget {
  final String bgImagePath;

  const GameCard({Key? key, required this.bgImagePath}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
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
        ...listOfProfileAvatars,
      ],
    );;
  }

  List<Widget> get listOfProfileAvatars => [
    getAvatar(12,AppAssets.profilePic1),
    getAvatar(37,AppAssets.profilePic2),
    getAvatar(62,AppAssets.profilePic3),
  ];

  Widget getAvatar(double l,String imagePath) {
    return Positioned(
      bottom: 14,
      left: l,
      child: ProfileAvatar(
        imagePath: imagePath,
      ),
    );
  }
}
