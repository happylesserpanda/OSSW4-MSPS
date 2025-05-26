import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ossw4_msps/main.dart';
import 'package:ossw4_msps/tabs/gerne.dart';

class InputTab extends StatefulWidget {
  const InputTab({super.key});

  @override
  State<InputTab> createState() =>
      _InputTabState();
}

class _InputTabState extends State<InputTab> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController inputCon =
        TextEditingController();
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
        padding: EdgeInsets.symmetric(
          horizontal: 48,
        ),
        color: Colors.white,
        width: double.infinity,
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [
            SizedBox(height: 48),
            Text("입력", style: titleText),
            SizedBox(height: 32),
            Text("제목", style: subtitleText),
            SizedBox(height: 16),
            TextField(
              controller: inputCon,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    inputCon.clear();
                    setState(() {});
                  },
                ),
                labelText: '제목',
                labelStyle: inputText,
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 48),

            GenreSelector(),
          ],
        ),
      ),
    );
  }
}
