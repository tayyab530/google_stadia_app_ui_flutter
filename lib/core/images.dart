//This class will help to access assets by name

class AppAssets {
  static const String logoSvg = "assets/Google_Stadia-Logo.wine.svg";
  static const String logoWithNamePNGNetwork =
      "https://download.logo.wine/logo/Google_Stadia/Google_Stadia-Portrait-Logo.wine.png";

  static const String controllerImage = "assets/ps4-controller-png-42099.png";

  //Games images for listview
  static const gameImages = [
    "assets/farcry_5.jpg", // 1
    "assets/ac_valhala.jpg", //2
    "assets/cod.jpg",        //3
    "assets/tomb_raider.jpeg", //4
    "assets/doom_eternal.jpg", //5
  ];

  //Games images for individual access
  static String gameImage_1 = gameImages.first;
  static String gameImage_2 = gameImages[1];
  static String gameImage_3 = gameImages[2];
  static String gameImage_4 = gameImages[3];
  static String gameImage_5 = gameImages[4];

  //BG for details
  static String gameImage_BG = "assets/bf_v.jpg";

  //Profile pictures for avatars
  static const String profilePic1 = "assets/profile_avatar_john_snow.jpg";
  static const String profilePic2 = "assets/profile_avatar_daenerys.jpg";
  static const String profilePic3 = "assets/profile_avatar_arya.jpg";
  static const String profilePic4 = "assets/profile_avatar_sansa_stark.jpg";

  //Icons images
  static const String playIconSVG = "assets/play_icon.svg";
}
