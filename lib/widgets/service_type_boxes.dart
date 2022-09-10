import 'package:flutter/material.dart';

import '../core/theme_data.dart';

class ServiceTypeBoxes extends StatefulWidget {
  const ServiceTypeBoxes({Key? key}) : super(key: key);

  @override
  State<ServiceTypeBoxes> createState() => _ServiceTypeBoxesState();
}

class _ServiceTypeBoxesState extends State<ServiceTypeBoxes> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
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
              padding: const EdgeInsets.only(right: 4),
              alignment: Alignment.centerRight,
              height: CustomTheme.serviceTypeBoxHeight,
              width: CustomTheme.serviceTypeBoxWidth + 5,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: const BorderRadius.only(
                  topRight:
                  Radius.circular(CustomTheme.borderCurve),
                  bottomRight:
                  Radius.circular(CustomTheme.borderCurve),
                ),
              ),
              child: Text(
                "FREE",
                style: TextStyle(color: Colors.grey[600],fontSize: CustomTheme.serviceTypeTextSize),
              ),
            ),
            Positioned(
                right: CustomTheme.serviceTypeBoxWidth,
                child: Container(
                  alignment: Alignment.center,
                  height: CustomTheme.serviceTypeBoxHeight,
                  width: CustomTheme.serviceTypeBoxWidth,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(CustomTheme.borderCurve)),
                  child: const Text(
                    "PRO",
                    style: TextStyle(color: CustomTheme.whiteColor,fontSize: CustomTheme.serviceTypeTextSize),
                  ),
                )),
          ],
        ),
      ],
    );
  }
}
