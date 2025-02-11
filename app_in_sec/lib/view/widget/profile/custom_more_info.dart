import 'package:app_in_sec/core/theme/color_app.dart';
import 'package:app_in_sec/core/theme/textstyle_app.dart';
import 'package:flutter/material.dart';

class CustomMoreInfo extends StatelessWidget {
  const CustomMoreInfo({
    super.key,
    required this.lis,
  });
  final List lis;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: ColorApp.second,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
          children: List.generate(
        lis.length,
        (index) => Padding(
          padding: const EdgeInsets.all(6.0),
          child: Row(
            children: [
              Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: ColorApp.primary),
                  child: Icon(lis[index].iconData, color: Colors.white)),
              const SizedBox(width: 10.0),
              Text(lis[index].text, style: TextstyleApp.black20normal)
            ],
          ),
        ),
      )),
    );
  }
}
