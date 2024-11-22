import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Win98Button extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const Win98Button({super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final AudioPlayer audioPlayer = AudioPlayer();

    // BSOD 사운드 재생 함수
    // void playBSODSound() async {
    //   await audioPlayer.play(AssetSource('assets/audio/BSOD.mp3'));
    // }

    return ElevatedButton(
      style: Theme.of(context).elevatedButtonTheme.style,
      onPressed: () {
        // playBSODSound(); // 사운드 재생
        onPressed(); // 기존 버튼 동작
      },
      child: Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
    );
  }
}
