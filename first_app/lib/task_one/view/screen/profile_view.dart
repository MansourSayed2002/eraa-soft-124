import 'package:first_app/task_one/core/constant/image_app.dart';
import 'package:first_app/task_one/core/constant/string_app.dart';
import 'package:first_app/task_one/core/constant/textstyle_app.dart';
import 'package:first_app/task_one/core/function/sizedbox_fun.dart';
import 'package:first_app/task_one/view/widget/profile/card_image_and_info.dart';
import 'package:first_app/task_one/view/widget/profile/custom_list_tile.dart';
import 'package:flutter/material.dart';

import '../widget/profile/custom_icon_button.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          StringApp.profile,
          style: TextstyleApp.black20blod,
        ),
        centerTitle: true,
        leading: CustomIconButton(
          iconData: Icons.search_outlined,
          onPressed: () {},
        ),
        actions: [
          CustomIconButton(
            iconData: Icons.login_outlined,
            onPressed: () {},
          ),
        ],
      ),
      body: const CustomBody(),
    );
  }
}

class CustomBody extends StatelessWidget {
  const CustomBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CardImageAndInfo(
          email: StringApp.email,
          image: ImageApp.photo,
          name: StringApp.name,
        ),
        sizedBoxHieght(10.0),
        CustomListTile(
          subTitle: StringApp.subOrder,
          title: StringApp.order,
          onPressed: () {},
        ),
        sizedBoxHieght(10.0),
        CustomListTile(
          subTitle: StringApp.subShipping,
          title: StringApp.shipping,
          onPressed: () {},
        ),
        sizedBoxHieght(10.0),
        CustomListTile(
          subTitle: StringApp.subPayment,
          title: StringApp.payment,
          onPressed: () {},
        ),
        sizedBoxHieght(10.0),
        CustomListTile(
          subTitle: StringApp.subReviews,
          title: StringApp.myreview,
          onPressed: () {},
        ),
        sizedBoxHieght(10.0),
        CustomListTile(
          subTitle: StringApp.subSetting,
          title: StringApp.setting,
          onPressed: () {},
        ),
      ],
    );
  }
}
