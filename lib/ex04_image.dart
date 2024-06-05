import 'package:flutter/material.dart';

class FinalImage extends StatelessWidget {
  const FinalImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // 상태바도 포함!
        title: Text(
          '첫번째 예제',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'image/t1.jpg',
              width: 150,
              height: 150,
            ),
            Text('안녕 내 이름은 t1이야!'),
            Image.asset(
              'image/sol.png',
              width: 150,
              height: 150,
            ),
            Text('안녕 내 이름은 솔선이야!')
          ],
        ),
      ),
    );
  }
}
