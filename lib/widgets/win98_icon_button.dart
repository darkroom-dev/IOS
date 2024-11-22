import 'package:flutter/material.dart';

class Win98IconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const Win98IconButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      decoration: const BoxDecoration(
        color: Color(0xFFC0C0C0), // 회색 배경
        border: Border(
          top: BorderSide(color: Colors.white, width: 1.5), // 위쪽 하얀색
          left: BorderSide(color: Colors.white, width: 1.5), // 왼쪽 하얀색
          bottom: BorderSide(color: Colors.black, width: 1.5), // 아래 검은색
          right: BorderSide(color: Colors.black, width: 1.5), // 오른쪽 검은색
        ),
      ),
      child: IconButton(
        padding: EdgeInsets.zero,
        icon: Icon(icon, color: Colors.black, size: 14), // 검은색 아이콘
        onPressed: onPressed,
      ),
    );
  }
}
