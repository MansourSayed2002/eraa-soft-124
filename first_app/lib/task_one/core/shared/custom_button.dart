import 'package:first_app/task_one/core/constant/color_app.dart';
import 'package:first_app/task_one/core/constant/textstyle_app.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onTap,
    required this.title,
  });
  final VoidCallback onTap;
  final String title;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: ColorApp.coral,
        ),
        child: Text(
          title,
          style: TextstyleApp.black20blod.copyWith(color: ColorApp.white),
        ),
      ),
    );
  }
}
