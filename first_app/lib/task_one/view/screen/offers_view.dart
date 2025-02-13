import 'package:first_app/task_one/core/constant/color_app.dart';
import 'package:first_app/task_one/core/constant/image_app.dart';
import 'package:first_app/task_one/core/constant/string_app.dart';
import 'package:first_app/task_one/core/constant/textstyle_app.dart';
import 'package:first_app/task_one/core/function/sizedbox_fun.dart';
import 'package:first_app/task_one/view/widget/offers/custom_count_order.dart';
import 'package:first_app/task_one/view/widget/offers/custom_description.dart';
import 'package:first_app/task_one/view/widget/offers/custom_image_offer.dart';
import 'package:first_app/task_one/view/widget/offers/custom_price_and_add_card.dart';
import 'package:first_app/task_one/view/widget/offers/custom_rating.dart';
import 'package:first_app/task_one/view/widget/profile/custom_icon_button.dart';
import 'package:first_app/task_one/view/widget/profile/custom_list_tile.dart';
import 'package:flutter/material.dart';

class OffersView extends StatelessWidget {
  const OffersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.deepOrangeAccent,
      appBar: AppBar(
        backgroundColor: ColorApp.deepOrangeAccentOpa4,
        leading: CustomIconButton(
          colorIcon: ColorApp.brown,
          iconData: Icons.arrow_back_ios_new_outlined,
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
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomImageOffer(
            image: ImageApp.offer,
          ),
          sizedBoxHieght(10.0),
          Text(
            StringApp.burger,
            style: TextstyleApp.brown30blod,
          ),
          sizedBoxHieght(10.0),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomRating(
                rating: StringApp.rating,
              ),
              CustomCountOrder(),
            ],
          ),
          const CustomDescription(
            description: StringApp.descrition,
            subDescription: StringApp.subDescription,
          ),
          sizedBoxHieght(10.0),
          const CustomPriceAndAddCard(),
          sizedBoxHieght(12.0),
          Divider(
            color: ColorApp.coral,
            indent: 10.0,
            endIndent: 10.0,
          ),
          sizedBoxHieght(12.0),
          Container(
            color: ColorApp.deepOrangeAccentOpa4,
            child: CustomListTile(
                subTitle: StringApp.sendyour,
                title: StringApp.review,
                iconData: Icons.keyboard_arrow_down_outlined,
                colorIcon: ColorApp.coral,
                sizeIcon: 30.0,
                styleTitle: TextstyleApp.brown30blod.copyWith(fontSize: 20.0),
                styleSubTitle: TextstyleApp.black14normal,
                onPressed: () {}),
          ),
        ],
      ),
    );
  }
}
