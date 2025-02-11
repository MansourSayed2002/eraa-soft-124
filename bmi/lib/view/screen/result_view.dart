import 'package:bmi/core/constant/text_app.dart';
import 'package:bmi/core/function/bmi_calculate.dart';
import 'package:bmi/core/shared/custom_container.dart';
import 'package:bmi/core/shared/custom_elevated_button.dart';
import 'package:bmi/core/theme/color_app.dart';
import 'package:bmi/core/theme/textstyle_app.dart';
import 'package:flutter/material.dart';

class ResultView extends StatelessWidget {
  const ResultView({super.key, required this.result});
  final double result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.primery,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back, color: ColorApp.white)),
        backgroundColor: ColorApp.primery,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(TextApp.yourResult, style: TextstyleApp.white23Bold),
            const SizedBox(height: 20.0),
            Expanded(
              child: CustomContainer(
                  color: ColorApp.primeryLight,
                  widget: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        getResult(result),
                        style: TextstyleApp.white23Bold
                            .copyWith(color: ColorApp.greenLight),
                      ),
                      const SizedBox(height: 100.0),
                      Text(result.toStringAsFixed(1),
                          style: TextstyleApp.white23Bold
                              .copyWith(fontSize: 60.0)),
                      const SizedBox(height: 100.0),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(getMessage(result),
                            style: TextstyleApp.white18normal),
                      ),
                    ],
                  )),
            ),
            CustomElevatedButton(
              padding: const EdgeInsets.all(30.0),
              text: TextApp.reCalculate,
              onTap: () {
                Navigator.of(context).pop();
              },
            )
          ],
        ),
      ),
    );
  }
}
