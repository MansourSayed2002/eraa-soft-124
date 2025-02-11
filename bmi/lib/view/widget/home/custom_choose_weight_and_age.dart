import 'package:bmi/core/shared/custom_container.dart';
import 'package:bmi/core/shared/custom_icon_button.dart';
import 'package:bmi/core/theme/color_app.dart';
import 'package:bmi/core/theme/textstyle_app.dart';
import 'package:flutter/material.dart';

class CustomChooseWeightAndAge extends StatelessWidget {
  const CustomChooseWeightAndAge({
    super.key,
    required this.addOnTap,
    required this.reOnTap,
    required this.value,
    required this.title,
  });
  final Function() addOnTap;
  final Function() reOnTap;
  final int value;
  final String title;
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
        color: ColorApp.primeryLight,
        widget: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title,
                style: TextstyleApp.white18normal.copyWith(fontSize: 13.0)),
            Text(value.toString(), style: TextstyleApp.white23Bold),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomIconButton(
                  iconDate: Icons.remove,
                  onTap: reOnTap,
                ),
                CustomIconButton(
                  iconDate: Icons.add,
                  onTap: addOnTap,
                ),
              ],
            )
          ],
        ));
  }
}
