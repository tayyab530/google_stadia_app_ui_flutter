import 'package:flutter/material.dart';

import '../core/theme_data.dart';

class PayButton extends StatelessWidget {
  const PayButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight * .06,
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
        borderRadius: BorderRadius.circular(CustomTheme.borderCurve),
      ),
      child: const Text(
        "PAY \$150",
        style: TextStyle(
          color: CustomTheme.whiteColor,
          fontWeight: FontWeight.bold,
          fontSize: CustomTheme.buttonTextSize,
        ),
      ),
    );
  }
}
