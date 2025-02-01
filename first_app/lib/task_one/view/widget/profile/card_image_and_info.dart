import 'package:first_app/task_one/core/constant/textstyle_app.dart';
import 'package:flutter/material.dart';

class CardImageAndInfo extends StatelessWidget {
  const CardImageAndInfo({
    super.key,
    required this.email,
    required this.image,
    required this.name,
  });
  final String image;
  final String name;
  final String email;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          ClipOval(
            child: Image.asset(
              image,
              fit: BoxFit.fill,
              height: 85.0,
              width: 85.0,
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextstyleApp.black20blod,
              ),
              Text(
                email,
                style: TextstyleApp.grey14normal,
              ),
            ],
          )
        ],
      ),
    );
  }
}
