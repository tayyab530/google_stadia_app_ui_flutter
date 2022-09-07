import 'package:flutter/material.dart';
import 'package:stadia_app_ui/core/images.dart';
import 'package:stadia_app_ui/core/theme_data.dart';

import '../widgets/list_of_game_cards.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const leftRightMargin = 25.0;

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
            margin: EdgeInsets.symmetric(horizontal: leftRightMargin),
            padding: EdgeInsets.only(top: 4),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Assassin's Creed",
                      style: TextStyle(
                          color: CustomTheme.headingTextColor,
                          fontSize: CustomTheme.headingTextSize,
                          fontWeight: FontWeight.bold),
                    ),
                    Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.centerRight,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 35,
                          width: 48,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.only(topRight: Radius.circular(8),bottomRight: Radius.circular(8)),
                          ),
                          child: Text(
                            "FREE",
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                        ),
                        Positioned(
                            right: 45,
                            child: Container(
                              alignment: Alignment.center,
                              height: 35,
                              width: 48,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(8)),
                              child: const Text(
                                "PRO",
                                style: TextStyle(color: CustomTheme.whiteColor),
                              ),
                            )),
                      ],
                    ),
                  ],
                ),
                Container(
                  height: screenHeight * .07,
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        CustomTheme.secondColorGradient,
                        CustomTheme.firstColorGradient,
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: const Text(
                    "PAY \$150",
                    style: TextStyle(
                      color: CustomTheme.whiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: CustomTheme.buttonTextSize,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.blue,
            height: screenHeight * .35,
          ),
          Container(
            color: Colors.white,
            height: screenHeight * .15,
          ),
        ],
      ),
    );
  }

  Widget get topBar => Container(
        alignment: Alignment.centerLeft,
        margin: const EdgeInsets.only(top: 25, left: leftRightMargin, bottom: 15),
        child: const Text(
          "Explore",
          style: TextStyle(
            color: CustomTheme.whiteColor,
            fontSize: CustomTheme.headingTextSize,
          ),
        ),
      );
}
