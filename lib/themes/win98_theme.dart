import 'package:flutter/material.dart';
import '../widgets/win98_icon_button.dart';

class Win98Theme {
  static ThemeData get theme {
    return ThemeData(
      primaryColor: const Color(0xFFC0C0C0),
      fontFamily: 'MorePerfectDOSVGA',
      textTheme: const TextTheme(
        bodyMedium: TextStyle(color: Colors.black, fontSize: 14),
        headlineMedium: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFE0E0E0),
          shadowColor: Colors.black,
          shape: const BeveledRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
        ),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFFA0A0A0),
        titleTextStyle: TextStyle(
          fontFamily: 'MorePerfectDOSVGA',
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
    );
  }

  static Widget withStyledBody({
    required Widget child,
    required String title, // 파란색 상단에 표시할 텍스트
    Color innerBackgroundColor = Colors.white,
  }) {
    return Container(
      decoration: const BoxDecoration(
        // 바깥 가장자리 흰색/검정 테두리
        border: Border(
          top: BorderSide(color: Colors.white, width: 2.0), // 상단 흰색 테두리
          left: BorderSide(color: Colors.white, width: 2.0), // 좌측 흰색 테두리
          bottom: BorderSide(color: Colors.black, width: 2.0), // 하단 검정 테두리
          right: BorderSide(color: Colors.black, width: 2.0), // 우측 검정 테두리
        ),
        color: Color(0xFFC0C0C0), // 전체 회색 배경
      ),
      child: Container(
        margin: const EdgeInsets.all(2.0), // 회색 테두리 내부 여백
        decoration: const BoxDecoration(
          color: Color(0xFFC0C0C0), // 내부 회색 테두리
          border: Border(
            top: BorderSide(color: Colors.white, width: 2.0), // 얇은 흰색
            left: BorderSide(color: Colors.white, width: 2.0), // 얇은 흰색
            bottom: BorderSide(color: Colors.black, width: 2.0), // 얇은 검정색
            right: BorderSide(color: Colors.black, width: 2.0), // 얇은 검정색
          ),
        ),
        child: Column(
          children: [
            // 상단 파란색 영역
            Container(
              height: 28.0, // 파란색 상단 높이
              color: const Color(0xFF000080), // 파란색
              child: Row(
                children: [
                  // 상단 왼쪽 텍스트
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Spacer(), // 텍스트와 버튼 간격 유지
                  Row(
                    children: [
                      Win98IconButton(
                        icon: Icons.question_mark,
                        onPressed: () {}, // '?' 버튼
                      ),
                      const SizedBox(width: 4),
                      Win98IconButton(
                        icon: Icons.close,
                        onPressed: () {}, // 'X' 버튼
                      ),
                      const SizedBox(width: 4), // 버튼 간 간격
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(6.0), // 내부 회색 테두리 두께
                color: innerBackgroundColor, // 내부 배경색 설정
                child: child, // 실제 위젯
              ),
            ),
          ],
        ),
      ),
    );
  }





}