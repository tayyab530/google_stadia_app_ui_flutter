import 'dart:ui';

import 'package:flutter/material.dart';

class CustomTheme{
//headings colors
  static const headingTextColor = Color(0Xff424242);
  static var playerNameTextColor = Colors.grey[600];

//game text colors
  static const gameTitleTextColor = Color(0Xff7a7a7a);

//Appbar gradient colors
  static const firstColorAppBarGradient = Color(0Xff26214a);
  static const secondColorAppBarGradient = Color(0Xff403c57);

  //bottom bar color
  static var bottomBarColor = Colors.grey[200];


//button gradient colors
  static const firstColorGradient = Color(0Xffb11053);
  static const secondColorGradient = Color(0Xfffa4920);

//Icons colors
  static var iconColor = Colors.grey[400];
  static var iconActiveColor = Colors.orange;
  static var visibilityIconActiveColor = Colors.red;
  static var visibilityIconDeActiveColor = Colors.grey;

//input colors
  static var textFieldColor = Colors.grey[200];
  static const textFieldHintColor = Color(0Xff9e9e9e);

  static const whiteColor = Color(0Xffffffff);

  //border curve
  static const borderCurve = 8.0;


  //Text sizes
  static const hintTextSize = 14.0;
  static const buttonTextSize = 14.0;
  static const headingTextSize = 18.0;
  static const serviceTypeTextSize = 12.0;
  static const playerNameTextSize = 12.0;
  static const dateTextSize = 9.0;
  static const gameNameTextSize = 18.0;
  static const bottomBarIconTextSize = 10.0;

  //Icons sizes
  static const bottomBarIconSize = 28.0;

  static var gameNameTextStyle = TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.grey[600]);
  static var gameDescTextStyle = TextStyle(fontSize: 12.0,color: Colors.grey);

  //Constants
  static const leftRightMargin = 25.0;

  static const serviceTypeBoxHeight = 25.0;
  static const serviceTypeBoxWidth = 40.0;
}
