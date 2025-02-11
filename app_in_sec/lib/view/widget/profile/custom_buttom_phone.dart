import 'package:app_in_sec/core/theme/color_app.dart';
import 'package:flutter/material.dart';

class CustomButtomPhone extends StatelessWidget {
  const CustomButtomPhone({
    super.key,
    required this.number,
    required this.onTap,
  });
  final int number;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(13.0),
        decoration: BoxDecoration(
          color: ColorApp.second,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          children: [
            const Icon(Icons.phone, color: Colors.black),
            Text("$number")
          ],
        ),
      ),
    );
  }
}
