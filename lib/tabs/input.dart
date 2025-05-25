import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ossw4_msps/main.dart';

class InputTab extends StatelessWidget {
  const InputTab({super.key});

  @override
  Widget build(BuildContext context) {
    double pageWidth =
        MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal:
            pageWidth > breakPointWidth
                ? (pageWidth - breakPointWidth) /
                    2
                : 20,
      ),
      child: Text('temp'),
    );
  }
}
