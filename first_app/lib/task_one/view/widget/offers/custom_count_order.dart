import 'package:first_app/task_one/core/constant/color_app.dart';
import 'package:first_app/task_one/core/constant/textstyle_app.dart';
import 'package:first_app/task_one/view/widget/profile/custom_icon_button.dart';
import 'package:flutter/material.dart';

class CustomCountOrder extends StatelessWidget {
  const CustomCountOrder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0,
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: ColorApp.coral,
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: ColorApp.melon,
            child: CustomIconButton(
                colorIcon: ColorApp.brown,
                iconData: Icons.remove,
                onPressed: () {}),
          ),
          Text(
            "1",
            style: TextstyleApp.black20blod.copyWith(color: ColorApp.white),
          ),
          CircleAvatar(
            radius: 25,
            backgroundColor: ColorApp.brown,
            child: CustomIconButton(
                colorIcon: ColorApp.white,
                iconData: Icons.add,
                onPressed: () {}),
          ),
        ],
      ),
    );
  }
}
