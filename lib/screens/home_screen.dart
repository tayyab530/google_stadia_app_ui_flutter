import 'package:flutter/material.dart';
import 'package:stadia_app_ui/core/images.dart';
import 'package:stadia_app_ui/core/theme_data.dart';
import 'package:stadia_app_ui/widgets/pay_button.dart';

import '../widgets/list_of_game_cards.dart';
import '../widgets/service_type_boxes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


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
            margin: EdgeInsets.symmetric(horizontal: CustomTheme.leftRightMargin),
            padding: EdgeInsets.only(top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                ServiceTypeBoxes(),
                PayButton(),
              ],
            ),
          ),
          Container(
            color: Colors.blue,
            height: screenHeight * .35,
            child: Column(
              children: [
                avatar
              ],
            ),
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
        margin:
            const EdgeInsets.only(top: 25, left: CustomTheme.leftRightMargin, bottom: 15),
        child: const Text(
          "Explore",
          style: TextStyle(
            color: CustomTheme.whiteColor,
            fontSize: CustomTheme.headingTextSize,
          ),
        ),
      );

  Widget get avatar => const CircleAvatar(
    backgroundColor: Colors.red,
    backgroundImage: NetworkImage(AppAssets.profilePic1),
  );

}
