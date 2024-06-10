import 'package:flutter/material.dart';

class ExAppBar extends StatelessWidget {
  const ExAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar 영역'),
        backgroundColor: Colors.redAccent,
        // AppBar의 왼쪽에 띄워지는 버튼! -> leading
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
          )
        ],
        foregroundColor: Colors.black, // appbar에서 색 지정
      ),
    );
  }
}
