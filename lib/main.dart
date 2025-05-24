import 'package:flutter/material.dart';

const TextStyle titleText = TextStyle(
  fontSize: 64,
  fontWeight: FontWeight.w600,
);
const TextStyle subtitleText = TextStyle(
  fontSize: 48,
  fontWeight: FontWeight.w500,
);
const TextStyle inputText = TextStyle(
  fontSize: 32,
  fontWeight: FontWeight.w300,
);
const TextStyle regularText = TextStyle(
  fontSize: 36,
  fontWeight: FontWeight.w400,
);
Color backColor = Color(0xFFF9EFFF);
const double breakPointWidth = 1080;

void main() {
  runApp(const OTTS());
}

class OTTS extends StatelessWidget {
  const OTTS({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: mainpage());
  }
}

class mainpage extends StatefulWidget {
  const mainpage({super.key});

  @override
  State<mainpage> createState() =>
      _mainpageState();
}

class _mainpageState extends State<mainpage> {
  @override
  Widget build(BuildContext context) {
    double pageWidth =
        MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: backColor,
      body: Column(
        children: [
          Container(
            color: Colors.white,
            width: double.infinity,
            height: 64,
            padding: EdgeInsets.symmetric(
              horizontal:
                  pageWidth > breakPointWidth
                      ? (pageWidth -
                              breakPointWidth) /
                          2
                      : 20,
            ),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'OTTS',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Spacer(),
                Text(
                  '공개SW프로젝트 4조',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
