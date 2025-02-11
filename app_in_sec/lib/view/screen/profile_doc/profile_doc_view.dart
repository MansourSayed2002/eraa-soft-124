import 'package:app_in_sec/core/constant/info_doc.dart';
import 'package:app_in_sec/core/constant/text_app.dart';
import 'package:app_in_sec/core/theme/color_app.dart';
import 'package:app_in_sec/core/theme/textstyle_app.dart';
import 'package:app_in_sec/view/widget/profile/custom_buttom.dart';
import 'package:app_in_sec/view/widget/profile/custom_more_info.dart';
import 'package:app_in_sec/view/widget/profile/profile_header.dart';
import 'package:flutter/material.dart';

class ProfileDocView extends StatelessWidget {
  const ProfileDocView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorApp.primary,
        centerTitle: true,
        title: Text(
          TextApp.doctorProfile,
          style: TextstyleApp.white20Bold,
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
      body: const CustomBody(),
    );
  }
}

class CustomBody extends StatelessWidget {
  const CustomBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView(
        children: [
          const ProfileHeader(),
          const SizedBox(height: 10.0),
          Text(
            TextApp.about,
            style: TextstyleApp.black20bold,
          ),
          const SizedBox(height: 8.0),
          Text(
            TextApp.exper,
            style: TextstyleApp.black16normal,
          ),
          const SizedBox(height: 10.0),
          CustomMoreInfo(
            lis: infoDoc,
          ),
          const Divider(
            indent: 10.0,
            endIndent: 10.0,
            thickness: 3.0,
            color: Colors.black,
          ),
          const SizedBox(height: 10.0),
          Text(TextApp.contactInfo, style: TextstyleApp.black20bold),
          CustomMoreInfo(
            lis: infoDocTwo,
          ),
          CustomButtom(
            colorbuttom: ColorApp.primary,
            title: TextApp.chat,
            onpressed: () {},
          ),
          CustomButtom(
            colorbuttom: Colors.blue.shade800,
            title: TextApp.book,
            onpressed: () {},
          ),
        ],
      ),
    );
  }
}
