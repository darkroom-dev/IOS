import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../widgets/win98_button.dart';
import '../themes/win98_theme.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key});

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  final TextEditingController _controller = TextEditingController();
  String _response = '';

  Future<void> _submitData() async {
    final inputText = _controller.text;
    if (inputText.isEmpty) {
      // 입력값이 비어 있으면 경고 메시지를 표시
      setState(() {
        _response = 'Please enter some text.';
      });
      return;
    }

    try {
      // POST 요청 전송
      final response = await http.post(
        Uri.parse('http://localhost:3000/question'), // 요청을 보낼 URL
        body: {'question': inputText},
      );
      // 서버 응답 처리
      if (response.statusCode == 200 || response.statusCode == 201) {
        setState(() {
          _response = 'Submission successful: ${response.body}';
          Navigator.pushNamed(context, '/');
        });

      } else {
        setState(() {
          _response = 'Failed to submit. Error: ${response.statusCode}';
        });
      }
    } catch (e) {
      // 에러 처리
      setState(() {
        _response = 'Error occurred: $e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('What do you want to know?'),
      ),
      body: Win98Theme.withStyledBody(
        title: "choosesssss",
        innerBackgroundColor: const Color(0xFFC0C0C0),
        child: Center(
          // 화면 전체 가운데 정렬
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center, // 수평 정렬 추가
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/map_click.png',
                      width: 30,
                      height: 30,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'Choose area',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Image.asset(
                  'assets/images/my-computer.png',
                  width: 200,
                  height: 200,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 500),

                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 350,
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          color: Colors.white, // 배경 흰색
                          border: Border.all(
                              color: Colors.black, width: 1), // 검정 테두리
                        ),
                        child: TextField(
                          controller: _controller,
                          decoration: const InputDecoration(
                            hintText: 'Enter your question',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ]
                ),

                const SizedBox(height: 20),
                Win98Button(
                  label: 'Submit',
                  onPressed: _submitData,
                ),

                const SizedBox(height: 20),

                // 응답 표시
                if (_response.isNotEmpty)
                  Text(
                    _response,
                    style: const TextStyle(color: Colors.black, fontSize: 16),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
