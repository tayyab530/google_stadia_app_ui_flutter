import 'package:flutter/material.dart';
import 'package:stadia_app_ui/core/images.dart';
import 'package:stadia_app_ui/core/theme_data.dart';

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
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 25,
                    ),
                    itemBuilder: (context, index) {
                      return Stack(
                        children: [
                          Card(
                            // margin: EdgeInsets.symmetric(
                            //     horizontal: 5, vertical: 25),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Image.asset(
                              AppAssets.acGameImage,
                            ),
                            clipBehavior: Clip.hardEdge,
                          ),
                          ...listOfProfileAvatars,
                        ],
                      );
                    },
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.black,
            height: screenHeight * .15,
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
