import 'package:flutter/material.dart';

class ExColumn extends StatelessWidget { // stl + enter -> class 이름 수정
  const ExColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea( // child를 꼭 가지고 있어야 함!
        child: Column(
          children: [
            TextField(),
            // 다양한 버튼 사용해 보기!
            TextButton(
              onPressed: (){},
              child: Text('전송'),
            ),
            ElevatedButton( // 디자인이 다른 버튼
              onPressed: (){},
              child: Text('전송'),
            ),
          ],
        ),
      ),
    ); // 끝날때 세미콜론(;) 붙여서 실행
  }
}
