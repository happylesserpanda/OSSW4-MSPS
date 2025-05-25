import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ossw4_msps/main.dart';

class InputTab extends StatelessWidget {
  const InputTab({super.key});

  @override
  Widget build(BuildContext context) {
    double pageWidth =
        MediaQuery.of(context).size.width;
    double horizontalPadding =
        pageWidth > breakPointWidth
            ? (pageWidth - breakPointWidth) / 2
            : 20;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
      ),
      child: Container(
        color: Colors.white,
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(height: 64),
            Text("hello"),
          ],
        ),
      ),
    );
  }
}
