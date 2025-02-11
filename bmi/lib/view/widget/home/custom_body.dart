import 'package:bmi/core/constant/text_app.dart';
import 'package:bmi/core/function/bmi_calculate.dart';
import 'package:bmi/core/shared/custom_elevated_button.dart';
import 'package:bmi/core/theme/color_app.dart';
import 'package:bmi/view/screen/result_view.dart';
import 'package:bmi/view/widget/home/custom_card_type.dart';
import 'package:bmi/view/widget/home/custom_choose_height.dart';
import 'package:bmi/view/widget/home/custom_choose_weight_and_age.dart';
import 'package:flutter/material.dart';

class CustomBody extends StatefulWidget {
  const CustomBody({super.key});

  @override
  State<CustomBody> createState() => _CustomBodyState();
}

class _CustomBodyState extends State<CustomBody> {
  bool type = false;
  double height = 75.0;
  int weight = 40;
  int age = 10;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
              CustomCardType(
                cardColor: type ? ColorApp.second : ColorApp.primeryLight,
                iconData: Icons.male,
                text: TextApp.male,
                onTap: () {
                  setState(() {
                    type = true;
                  });
                },
              ),
              CustomCardType(
                cardColor: !type ? ColorApp.second : ColorApp.primeryLight,
                iconData: Icons.female,
                text: TextApp.female,
                onTap: () {
                  setState(() {
                    type = false;
                  });
                },
              )
            ],
          ),
        ),
        Expanded(
          child: CustomChooseHeight(
            height: height,
            onTap: (value) {
              setState(() {
                height = value;
              });
            },
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: CustomChooseWeightAndAge(
                  title: TextApp.weight,
                  value: weight,
                  addOnTap: () {
                    setState(() {
                      weight++;
                    });
                  },
                  reOnTap: () {
                    setState(() {
                      if (weight > 30) {
                        weight--;
                      }
                    });
                  },
                ),
              ),
              Expanded(
                child: CustomChooseWeightAndAge(
                  title: TextApp.age,
                  value: age,
                  addOnTap: () {
                    setState(() {
                      age++;
                    });
                  },
                  reOnTap: () {
                    setState(() {
                      if (age > 0) {
                        age--;
                      }
                    });
                  },
                ),
              ),
            ],
          ),
        ),
        CustomElevatedButton(
          text: TextApp.calculate,
          onTap: () {
            double bmi = bmiCalculate(weight, height) * 100;
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ResultView(result: bmi),
            ));
          },
        )
      ],
    );
  }
}
