import 'package:first_app/task_one/core/constant/color_app.dart';
import 'package:flutter/material.dart';

class TextstyleApp {
  static const TextStyle black20blod = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
  );
  static TextStyle brown30blod = TextStyle(
    fontSize: 30.0,
    fontWeight: FontWeight.bold,
    color: ColorApp.brown,
  );
  static TextStyle grey14normal = const TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
    color: Colors.grey,
  );
  static TextStyle black14normal = const TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
    color: Colors.black,
  );
}
