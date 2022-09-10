import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../core/images.dart';
import '../core/theme_data.dart';
import 'description_game_card.dart';
import 'profile_avatar.dart';

class PlayerProfileHeader extends StatelessWidget {
  final String playerName;
  final String playerProfileAvatar;
  final DateTime dateOfPost;
  final String gameImagePath;
  final String gameName;
  final String gameDesc;

  const PlayerProfileHeader({
    Key? key,
    required this.playerName,
    required this.dateOfPost,
    required this.gameImagePath,
    required this.gameName,
    required this.gameDesc, required this.playerProfileAvatar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ProfileAvatar(
              imagePath: playerProfileAvatar,
            ),
            const SizedBox(
              width: 5.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  playerName,
                  style: TextStyle(
                    fontSize: CustomTheme.playerNameTextSize,
                    color: CustomTheme.playerNameTextColor,
                    // fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  DateFormat("dd-MM-yyyy").format(dateOfPost),
                  style: const TextStyle(
                    fontSize: CustomTheme.dateTextSize,
                    color: CustomTheme.textFieldHintColor,
                  ),
                ),
              ],
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(
            left: 50,
            bottom: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DescriptionGameCard(
                bgImagePath: gameImagePath,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                gameName,
                style: CustomTheme.gameNameTextStyle,
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                gameDesc,
                style: CustomTheme.gameDescTextStyle,
              )
            ],
          ),
        ),
      ],
    );
  }
}
