//This class will help to access assets by name

class AppAssets {
  static const String logoSvg = "assets/Google_Stadia-Logo.wine.svg";
  static const String logoWithNamePNGNetwork =
      "https://download.logo.wine/logo/Google_Stadia/Google_Stadia-Portrait-Logo.wine.png";

  static const String controllerImage = "assets/ps4-controller-png-42099.png";

  //Games images for listview
  static const gameImages = [
    "assets/farcry_5.jpg",
    "assets/ac_valhala.jpg",
    "assets/cod.jpg",
    "assets/tomb_raider.jpeg",
  ];

  //Games images for individual access
  static String gameImage_1 = gameImages.first;
  static String gameImage_2 = gameImages[1];
  static String gameImage_3 = gameImages[2];
  static String gameImage_4 = gameImages[3];

  //Profile pictures for avatars
  static const String profilePic1 = "assets/profile_avatar_john_snow.jpg";
  static const String profilePic2 = "assets/profile_avatar_daenerys.jpg";
  static const String profilePic3 = "assets/profile_avatar_arya.jpg";
  static const String profilePic4 = "assets/profile_avatar_sansa_stark.jpg";

  //Icons images
  static const String playIconImage = "assets/play_icon.png";
}
