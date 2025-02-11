import 'package:app_in_sec/core/theme/textstyle_app.dart';
import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({
    super.key,
    required this.colorbuttom,
    required this.onpressed,
    required this.title,
  });
  final VoidCallback onpressed;
  final String title;
  final Color colorbuttom;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(13.0),
        decoration: BoxDecoration(
          color: colorbuttom,
          borderRadius: BorderRadius.circular(13.0),
        ),
        child: Text(title, style: TextstyleApp.white20Bold),
      ),
    );
  }
}
