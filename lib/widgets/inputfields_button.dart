import 'package:flutter/material.dart';
import 'package:stadia_app_ui/screens/home_screen.dart';

import '../core/theme_data.dart';

class InputFieldsAndButton extends StatefulWidget {
  const InputFieldsAndButton({Key? key}) : super(key: key);

  static const _inputHeight = 46.0;

  @override
  State<InputFieldsAndButton> createState() => _InputFieldsAndButtonState();
}

class _InputFieldsAndButtonState extends State<InputFieldsAndButton> {
  var showPassword = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        bottomBGCircle,
        Container(
          padding: const EdgeInsets.only(left: 40.0, right: 40.0, bottom: 30.0),
          // color: Colors.orange,
          height: screenHeight * 0.3,
          width: screenWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              userName,
              const SizedBox(
                height: 10.0,
              ),
              password,
              // SizedBox(height: 27.0,),
              const Spacer(),
              button,
            ],
          ),
        ),
      ],
    );
  }

  Widget get userName => Container(
        decoration: BoxDecoration(
          color: CustomTheme.textFieldColor,
          borderRadius: BorderRadius.circular(14),
        ),
        height: InputFieldsAndButton._inputHeight,
        child: const TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "User Name",
            hintStyle: TextStyle(
                color: CustomTheme.textFieldHintColor,
                fontSize: CustomTheme.hintTextSize),
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          ),
        ),
      );

  Widget get password => Container(
        decoration: BoxDecoration(
          color: CustomTheme.textFieldColor,
          borderRadius: BorderRadius.circular(14),
        ),
        height: InputFieldsAndButton._inputHeight,
        child: TextField(
          textAlign: TextAlign.left,
          obscureText: !showPassword,
          onChanged: (passWord) {
            if (passWord.isEmpty)
              setState(() {
                showPassword = false;
              });
          },
          decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: visibilityIcon,
              onPressed: togglePasswordVisibility,
              splashColor: Colors.transparent,
            ),
            border: InputBorder.none,
            hintText: "Password",
            hintStyle: const TextStyle(
              color: CustomTheme.textFieldHintColor,
              fontSize: CustomTheme.hintTextSize,
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
          ),
        ),
      );

  Widget get button => GestureDetector(
    child: Container(
          height: InputFieldsAndButton._inputHeight,
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
            "SING IN",
            style: TextStyle(
              color: CustomTheme.whiteColor,
              fontWeight: FontWeight.bold,
              fontSize: CustomTheme.buttonTextSize,
            ),
          ),
        ),
    onTap: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=> const HomeScreen()));
    },
  );

  Widget get bottomBGCircle => Positioned(
        top: 70,
        left: -190,
        child: Container(
          width: 1600,
          height: 1600,
          decoration: BoxDecoration(
            color: CustomTheme.bottomBarColor,
            shape: BoxShape.circle,
          ),
        ),
      );

  Icon get visibilityIcon => Icon(
        showPassword ? Icons.visibility : Icons.visibility_off,
        color: showPassword
            ? CustomTheme.visibilityIconActiveColor
            : CustomTheme.visibilityIconDeActiveColor,
      );

  togglePasswordVisibility() {
    setState(() {
      showPassword = !showPassword;
    });
  }
}
