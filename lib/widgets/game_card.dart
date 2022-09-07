import 'package:flutter/material.dart';

import '../core/images.dart';

class GameCard extends StatelessWidget {
  const GameCard({Key? key}) : super(key: key);

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
            AppAssets.acGameImage,
          ),
        ),
        ...listOfProfileAvatars,
      ],
    );;
  }

  List<Widget> get listOfProfileAvatars => [
    getAvatar(12),
    getAvatar(37),
    getAvatar(62),
  ];

  Widget getAvatar(double l) {
    return Positioned(
      bottom: 14,
      left: l,
      child: const CircleAvatar(
        backgroundColor: Colors.red,
        backgroundImage: AssetImage(AppAssets.controllerImage),
      ),
    );
  }
}
