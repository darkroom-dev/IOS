import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Computer'),
        // TODO 폰트 변경
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'This is the My Computer page!',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // 이전 페이지로 돌아가기
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFE0E0E0), // Windows 98 스타일
                shape: const BeveledRectangleBorder(
                  borderRadius: BorderRadius.zero, // 직각 모서리
                ),
              ),
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
