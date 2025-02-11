import 'package:bmi/core/constant/text_app.dart';

bmiCalculate(weight, height) {
  return weight / (height * height / 100);
}

String getResult(bmi) {
  if (bmi >= 25.0) {
    return TextApp.overweidth;
  } else if (bmi >= 18.5) {
    return TextApp.normal;
  } else {
    return TextApp.under;
  }
}

String getMessage(bmi) {
  if (bmi >= 25.0) {
    return TextApp.messageOver;
  } else if (bmi >= 18.5) {
    return TextApp.messageNormal;
  } else {
    return TextApp.messageUnder;
  }
}
