import 'package:flutter/material.dart';
import 'themes/win98_theme.dart';
import 'screen/home_page.dart';
import 'screen/second_page.dart';
import 'screen/question_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Darkroom',
      theme: Win98Theme.theme,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/second': (context) => const SecondPage(),
        '/question': (context) => const QuestionPage(),
      },
    );
  }
}
