import 'package:bmi/core/constant/text_app.dart';
import 'package:bmi/core/theme/color_app.dart';
import 'package:bmi/core/theme/textstyle_app.dart';
import 'package:bmi/view/widget/home/custom_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.primery,
      appBar: AppBar(
        backgroundColor: ColorApp.primery,
        leading: Image.asset("asset/image/pizza.png"),
        title: Text(
          TextApp.nameApp,
          style: TextstyleApp.white23Bold,
        ),
      ),
      body: const CustomBody(),
    );
  }
}
