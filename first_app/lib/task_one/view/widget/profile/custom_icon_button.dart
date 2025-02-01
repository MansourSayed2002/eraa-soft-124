import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.iconData,
    required this.onPressed,
    this.sizeIcon,
    this.colorIcon,
  });
  final IconData iconData;
  final VoidCallback onPressed;
  final double? sizeIcon;
  final Color? colorIcon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        iconData,
        color: colorIcon,
        size: sizeIcon,
      ),
    );
  }
}
