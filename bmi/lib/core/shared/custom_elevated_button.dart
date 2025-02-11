import 'package:bmi/core/theme/color_app.dart';
import 'package:bmi/core/theme/textstyle_app.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.onTap,
    this.padding,
  });
  final String text;
  final Function() onTap;
  final EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorApp.second,
          padding: padding ?? const EdgeInsets.all(10.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        ),
        child: Text(
          text,
          style: TextstyleApp.white23Bold,
        ),
      ),
    );
  }
}
