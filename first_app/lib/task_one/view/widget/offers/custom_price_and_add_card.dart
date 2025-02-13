import 'package:first_app/task_one/core/constant/string_app.dart';
import 'package:first_app/task_one/core/constant/textstyle_app.dart';
import 'package:first_app/task_one/core/shared/custom_button.dart';
import 'package:flutter/material.dart';

class CustomPriceAndAddCard extends StatelessWidget {
  const CustomPriceAndAddCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          StringApp.price,
          style: TextstyleApp.black20blod,
        ),
        CustomButton(
          onTap: () {},
          title: StringApp.addTocard,
        )
      ],
    );
  }
}
