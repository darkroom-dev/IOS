// import 'package:flutter/material.dart';
// import '../widgets/win98_button.dart';
//
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Darkroom'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text('Welcome to Darkroom Service!',
//                 style: TextStyle(fontSize: 16)),
//             const SizedBox(height: 20),
//             Win98Button(
//               label: 'Give your question',
//               onPressed: () {
//                 Navigator.pushNamed(context, '/question');
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import '../themes/win98_theme.dart'; // 테마를 가져옴
import '../widgets/win98_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Darkroom'),
      ),
      body: Win98Theme.withStyledBody(
        title: "Hello world !!!",
        innerBackgroundColor: const Color(0xFFC0C0C0),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 200,),
              Image.asset(
                'assets/images/my-computer.png',
                width: 100,
                height: 100,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 50,),
              const Text(
                'Welcome to Darkroom Service!',
                style: TextStyle(fontSize: 22),
              ),
              const SizedBox(height: 20),
              Win98Button(
                label: 'Give your question',
                onPressed: () {
                  Navigator.pushNamed(context, '/question');
                },
              ),
            ],
          ),
        ),
        // innerBackgroundColor: const Color(0xFFC0C0C0),
      ),
    );
  }
}
