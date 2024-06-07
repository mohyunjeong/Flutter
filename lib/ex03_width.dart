import 'package:flutter/material.dart';

class ExWidth extends StatelessWidget {
  const ExWidth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          // color: Colors.redAccent[100],
          // 실행 화면의 크기에 맞춰 넓이가 꽉 채워지는 Container 생성!
          width: double.infinity, // 다른 크기의 화면에서도 유지하기 위해 infinity 사용
          height: 100,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.redAccent[100],
            borderRadius: BorderRadius.circular(10),
          ),
          
        ),
      ),
    );
  }
}
