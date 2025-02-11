import 'package:bmi/core/constant/text_app.dart';
import 'package:bmi/core/shared/custom_container.dart';
import 'package:bmi/core/theme/color_app.dart';
import 'package:bmi/core/theme/textstyle_app.dart';
import 'package:flutter/material.dart';

class CustomChooseHeight extends StatelessWidget {
  const CustomChooseHeight({
    super.key,
    required this.height,
    required this.onTap,
  });
  final Function(double)? onTap;
  final double height;
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      color: ColorApp.primeryLight,
      widget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(TextApp.height, style: TextstyleApp.white18normal),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                height.toInt().toString(),
                style: TextstyleApp.white23Bold.copyWith(fontSize: 28.0),
              ),
              Text(
                TextApp.cm,
                style: TextstyleApp.white18normal.copyWith(fontSize: 13.0),
              ),
            ],
          ),
          Slider(
            value: height,
            onChanged: onTap,
            min: 50,
            max: 200,
            activeColor: ColorApp.second,
            inactiveColor: ColorApp.grey,
          ),
        ],
      ),
    );
  }
}
