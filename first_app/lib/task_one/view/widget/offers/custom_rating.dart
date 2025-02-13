import 'package:first_app/task_one/core/constant/color_app.dart';
import 'package:first_app/task_one/core/constant/textstyle_app.dart';
import 'package:flutter/material.dart';

class CustomRating extends StatelessWidget {
  const CustomRating({
    super.key,
    required this.rating,
  });
  final String rating;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: ColorApp.brown,
          size: 30.0,
        ),
        Text(
          rating,
          style: TextstyleApp.black20blod.copyWith(fontSize: 15.0),
        )
      ],
    );
  }
}
