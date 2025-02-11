import 'package:app_in_sec/core/constant/text_app.dart';
import 'package:app_in_sec/core/theme/textstyle_app.dart';
import 'package:app_in_sec/view/widget/profile/custom_buttom_phone.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 140,
          height: 140,
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: NetworkImage(
                      "https://symbiosisuniversityhospital.com/images/doctors/abhishek.jpg"),
                  fit: BoxFit.fill)),
        ),
        const SizedBox(width: 10.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                TextApp.name,
                overflow: TextOverflow.ellipsis,
                style: TextstyleApp.black20normal,
              ),
              const SizedBox(height: 8.0),
              Text(
                TextApp.doctor,
                style: TextstyleApp.black20normal,
              ),
              const SizedBox(height: 8.0),
              const Row(
                children: [Icon(Icons.star, color: Colors.amber), Text("4.5")],
              ),
              const SizedBox(height: 8.0),
              Row(
                children: [
                  CustomButtomPhone(
                    number: 1,
                    onTap: () {},
                  ),
                  const SizedBox(width: 8.0),
                  CustomButtomPhone(
                    number: 2,
                    onTap: () {},
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
