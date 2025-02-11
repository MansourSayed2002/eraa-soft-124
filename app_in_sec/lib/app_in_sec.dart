import 'package:app_in_sec/view/screen/home/home_view_two.dart';

import 'package:flutter/material.dart';

class AppInSec extends StatelessWidget {
  const AppInSec({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeViewTwo(),
    );
  }
}
