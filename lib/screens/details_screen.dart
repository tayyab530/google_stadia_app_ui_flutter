import 'package:flutter/material.dart';
import 'package:stadia_app_ui/core/images.dart';

import '../core/bottom_bar_icons_icons.dart';
import '../core/theme_data.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomLeft,
        clipBehavior: Clip.none,
        children: [
          Container(
            height: screenHeight * 1,
            alignment: Alignment.topCenter,
            child: Container(
              height: screenHeight * .8,
              // padding: EdgeInsets.only(bottom: screenHeight * 0.2),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppAssets.gameImage_BG),
                  fit: BoxFit.cover
                ),
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: screenWidth,
              height: screenHeight * .35,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    CustomTheme.firstColorAppBarGradient,
                    CustomTheme.secondColorAppBarGradient,
                    Colors.transparent
                  ],
                  stops: [.1, .23, 1],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
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
                      padding:
                          EdgeInsets.symmetric(horizontal: rightLeftPadding),
                      decoration: BoxDecoration(
                        color: CustomTheme.bottomBarColor,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(30),
                        ),
                      ),
                      // child: CustomPaint(
                      //   painter: CurvePainter(
                      //   ),
                      // ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                BottomBarIcons.shopping_bag_svgrepo_com,
                                color: CustomTheme.iconColor,
                                size: CustomTheme.bottomBarIconSize,
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Store",
                                style: TextStyle(
                                  color: CustomTheme.iconColor,
                                  fontSize: CustomTheme.bottomBarIconTextSize,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                BottomBarIcons.explore_tool_svgrepo_com,
                                color: CustomTheme.iconActiveColor,
                                size: CustomTheme.bottomBarIconSize,
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Explore",
                                style: TextStyle(
                                  color: CustomTheme.iconActiveColor,
                                  fontSize: CustomTheme.bottomBarIconTextSize,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: (constraints.maxWidth / 2) - (gameCircleRadius / 2),
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
                        child: const Icon(Icons.videogame_asset_rounded,
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
    );
  }
}
