import 'package:first_app/task_one/core/constant/textstyle_app.dart';
import 'package:flutter/material.dart';

class CustomDescription extends StatelessWidget {
  const CustomDescription({
    super.key,
    required this.description,
    required this.subDescription,
  });
  final String description;
  final String subDescription;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          description,
          style: TextstyleApp.brown30blod.copyWith(fontSize: 25.0),
        ),
        Text(
          subDescription,
        ),
      ],
    );
  }
}
