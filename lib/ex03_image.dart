import 'package:flutter/material.dart';

class ExImage extends StatelessWidget {
  const ExImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(
              'image/t1.jpg',
              width: 450,
              height: 350, // -> X 자로 그어져 있다면 사진 크기가 너무 큰 것! -> 조정해주기!
            ),
            Text('최선있티'),
            Image.asset(
              'image/sol.png',
              width: 450,
              height: 350,
            ),
            Text('선업튀 겨론해~'),
          ],
        ),
      ),
    );
  }
}
