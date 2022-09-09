import 'package:flutter/material.dart';

import '../core/images.dart';
import 'game_card.dart';

class ListOfGameCards extends StatelessWidget {
  const ListOfGameCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.only(
          left: 5,
          right: 5,
          bottom: 10,
        ),
        itemBuilder: (context, index) {
          return GameCard(bgImagePath: AppAssets.gameImages[index],);
        },
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
      ),
    );
  }
}
