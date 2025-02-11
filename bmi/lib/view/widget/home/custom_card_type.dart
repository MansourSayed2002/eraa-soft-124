import 'package:bmi/core/shared/custom_container.dart';
import 'package:bmi/core/theme/color_app.dart';
import 'package:bmi/core/theme/textstyle_app.dart';
import 'package:flutter/material.dart';

class CustomCardType extends StatelessWidget {
  const CustomCardType({
    super.key,
    required this.iconData,
    required this.onTap,
    required this.text,
    required this.cardColor,
  });
  final IconData iconData;
  final String text;
  final Function() onTap;
  final Color cardColor;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: CustomContainer(
          color: cardColor,
          widget: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(iconData, size: 130.0, color: ColorApp.white),
              Text(text, style: TextstyleApp.white23Bold),
            ],
          ),
        ),
      ),
    );
  }
}
