import 'package:flutter/material.dart';
import 'tabs/input.dart';
import 'tabs/ranking.dart';

const TextStyle titleText = TextStyle(
  fontFamily: 'Pretendard',
  fontSize: 64,
  fontWeight: FontWeight.w600,
);
const TextStyle selectText = TextStyle(
  fontFamily: 'Pretendard',
  fontSize: 20,
  fontWeight: FontWeight.w600,
);
const TextStyle subtitleText = TextStyle(
  fontFamily: 'Pretendard',
  fontSize: 48,
  fontWeight: FontWeight.w500,
);
const TextStyle inputText = TextStyle(
  fontFamily: 'Pretendard',
  fontSize: 32,
  fontWeight: FontWeight.w300,
);
const TextStyle regularText = TextStyle(
  fontFamily: 'Pretendard',
  fontSize: 36,
  fontWeight: FontWeight.w400,
);
Color backColor = Color(0xFFF9EFFF);
Color selectedColor = Color(0xFFE1C2F2);
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
  bool SelectedTabisRanking = true;

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
                    fontFamily: 'Pretendard',
                    fontSize: 36,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Spacer(),
                Text(
                  '공개SW프로젝트 4조',
                  style: TextStyle(
                    fontFamily: 'Pretendard',
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 100),

                  //버튼
                  Container(
                    height: 60,
                    padding: EdgeInsets.symmetric(
                      horizontal:
                          pageWidth >
                                  breakPointWidth
                              ? (pageWidth -
                                      breakPointWidth) /
                                  2
                              : 20,
                    ),

                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap:
                                () => setState(
                                  () =>
                                      SelectedTabisRanking =
                                          false,
                                ),
                            child: Container(
                              padding:
                                  const EdgeInsets.all(
                                    16,
                                  ),
                              decoration: BoxDecoration(
                                color:
                                    SelectedTabisRanking ==
                                            false
                                        ? Colors
                                            .white
                                        : Colors
                                            .purple[200],
                                borderRadius:
                                    const BorderRadius.only(
                                      topLeft:
                                          Radius.circular(
                                            16,
                                          ), // 왼쪽 위 둥글게
                                    ),
                              ),
                              child: const Center(
                                child: Text(
                                  '랭킹',
                                  style:
                                      selectText,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap:
                                () => setState(
                                  () =>
                                      SelectedTabisRanking =
                                          true,
                                ),
                            child: Container(
                              padding:
                                  const EdgeInsets.all(
                                    16,
                                  ),
                              decoration: BoxDecoration(
                                color:
                                    SelectedTabisRanking ==
                                            true
                                        ? Colors
                                            .white
                                        : Colors
                                            .purple[200],
                                borderRadius:
                                    const BorderRadius.only(
                                      topRight:
                                          Radius.circular(
                                            16,
                                          ), // 오른쪽 위 둥글게
                                    ),
                              ),
                              child: const Center(
                                child: Text(
                                  '성공 확률 예측',
                                  style:
                                      selectText,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //화면전환
                  AnimatedSwitcher(
                    duration: const Duration(
                      milliseconds: 300,
                    ),
                    child:
                        SelectedTabisRanking
                            ? const RankingTab()
                            : const InputTab(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
