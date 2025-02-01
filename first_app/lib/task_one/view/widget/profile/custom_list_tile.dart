import 'package:first_app/task_one/core/constant/textstyle_app.dart';
import 'package:first_app/task_one/view/widget/profile/custom_icon_button.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.subTitle,
    required this.title,
    required this.onPressed,
    this.styleTitle,
    this.styleSubTitle,
    this.iconData,
    this.colorIcon,
    this.sizeIcon,
  });
  final String title;
  final String subTitle;
  final VoidCallback onPressed;
  final IconData? iconData;
  final Color? colorIcon;
  final TextStyle? styleTitle;
  final TextStyle? styleSubTitle;
  final double? sizeIcon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: styleTitle ?? TextstyleApp.black20blod,
      ),
      subtitle: Text(
        subTitle,
        style: styleSubTitle ?? TextstyleApp.grey14normal,
      ),
      trailing: CustomIconButton(
        iconData: iconData ?? Icons.arrow_forward_ios,
        sizeIcon: sizeIcon ?? 20,
        colorIcon: colorIcon,
        onPressed: onPressed,
      ),
    );
  }
}
