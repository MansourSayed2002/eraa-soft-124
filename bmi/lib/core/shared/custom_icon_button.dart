import 'package:bmi/core/theme/color_app.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.iconDate,
    required this.onTap,
  });
  final IconData iconDate;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.0,
      height: 50.0,
      margin: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: ColorApp.grey,
        shape: BoxShape.circle,
      ),
      child: IconButton(
          onPressed: onTap,
          icon: Icon(iconDate, color: ColorApp.white, size: 30.0)),
    );
  }
}
