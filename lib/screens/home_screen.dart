import 'dart:math';

import 'package:flutter/material.dart';
import 'package:stadia_app_ui/core/bottom_bar_icons_icons.dart';
import 'package:stadia_app_ui/core/images.dart';
import 'package:stadia_app_ui/core/theme_data.dart';
import 'package:stadia_app_ui/models/game_model.dart';
import 'package:stadia_app_ui/models/player_model.dart';
import 'package:stadia_app_ui/widgets/player_profile_header.dart';

import '../widgets/description_game_card.dart';
import '../widgets/list_of_game_cards.dart';
import '../widgets/pay_button.dart';
import '../widgets/profile_avatar.dart';
import '../widgets/service_type_boxes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CustomTheme get _theme => CustomTheme();
  List<Player> playersList = [
    Player("John Snow", AppAssets.profilePic1),
    Player("Daenerys", AppAssets.profilePic2),
  ];

  List<Game> gamesList = [
    Game(
      "Shadow of the Tomb Raider",
      "Shadow of the Tomb Raider is a 2018 action-adventure video game developed by Eidos-Montréal and published by Square Enix's European subsidiary.",
      AppAssets.gameImage_4,
    ),
    Game(
      "Doom Eternal",
      "Doom Eternal is a first-person shooter game developed by Software and published by Bethesda Softworks.",
      AppAssets.gameImage_5,
    ),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          Container(
            // color: Colors.amber,
            width: screenWidth,
            height: screenHeight * .35,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  CustomTheme.firstColorAppBarGradient,
                  CustomTheme.secondColorAppBarGradient,
                  CustomTheme.whiteColor
                ],
                stops: [.1, .23, 1],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              children: [
                topBar,
                const ListOfGameCards(),
              ],
            ),
          ),
          Container(
            height: screenHeight * .15,
            margin: const EdgeInsets.symmetric(
                horizontal: CustomTheme.leftRightMargin),
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                ServiceTypeBoxes(),
                PayButton(),
              ],
            ),
          ),
          Container(
            height: screenHeight * 0.5,
            width: screenWidth,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  // color: Colors.blue,
                  height: screenHeight * 0.5,
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: CustomTheme.leftRightMargin,
                    right: CustomTheme.leftRightMargin,
                  ),
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: gamesList.length,
                    itemBuilder: (ctx, index) {
                      var game = gamesList[index];
                      var player = playersList[index];
                      return PlayerProfileHeader(
                        playerName: player.name,
                        playerProfileAvatar: player.avatarImagePath,
                        gameName: game.gameName,
                        gameDesc: game.gameDesc,
                        gameImagePath: game.imagePath,
                        dateOfPost: DateTime(
                          2022,
                          Random().nextInt(31) + 1,
                          Random().nextInt(12) + 1,
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  height: screenHeight * .15,
                  // color: Colors.white.withOpacity(0),
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      var gameCircleRadius = constraints.maxHeight * 0.67;
                      var barHeight = constraints.maxHeight * .75;
                      var rightLeftPadding = constraints.maxWidth * 0.15;

                      return Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                            height: barHeight,
                            // color: Colors.grey,
                            padding: EdgeInsets.symmetric(
                                horizontal: rightLeftPadding),
                            decoration: BoxDecoration(
                              color: CustomTheme.bottomBarColor,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30),
                                topLeft: Radius.circular(30),
                              ),
                            ),
                            // child: CustomPaint(
                            //   painter: CurvePainter(
                            //   ),
                            // ),
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      BottomBarIcons.shopping_bag_svgrepo_com,
                                      color: CustomTheme.iconColor,
                                      size: CustomTheme.bottomBarIconSize,
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      "Store",
                                      style: TextStyle(
                                        color: CustomTheme.iconColor,
                                        fontSize:
                                            CustomTheme.bottomBarIconTextSize,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      BottomBarIcons.explore_tool_svgrepo_com,
                                      color: CustomTheme.iconActiveColor,
                                      size: CustomTheme.bottomBarIconSize,
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      "Explore",
                                      style: TextStyle(
                                        color: CustomTheme.iconActiveColor,
                                        fontSize:
                                            CustomTheme.bottomBarIconTextSize,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: (constraints.maxWidth / 2) -
                                (gameCircleRadius / 2),
                            child: Container(
                              height: gameCircleRadius,
                              width: gameCircleRadius,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    CustomTheme.secondColorGradient,
                                    CustomTheme.firstColorGradient,
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(Icons.videogame_asset_rounded,
                                  color: CustomTheme.whiteColor),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget get topBar => Container(
        alignment: Alignment.centerLeft,
        margin: const EdgeInsets.only(
            top: 25, left: CustomTheme.leftRightMargin, bottom: 15),
        child: const Text(
          "Explore",
          style: TextStyle(
            color: CustomTheme.whiteColor,
            fontSize: CustomTheme.headingTextSize,
          ),
        ),
      );
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.green[800]!;
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, size.height * 0.9167);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.875,
        size.width * 0.5, size.height * 0.9167);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.9584,
        size.width * 1.0, size.height * 0.9167);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
