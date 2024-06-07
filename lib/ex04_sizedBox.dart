import 'package:flutter/material.dart';

class ExSizedBox extends StatelessWidget {
  const ExSizedBox({super.key});

  // sizedbox의 목적!
  // 1. child 위젯의 크기를 조정하기 위한 목적!
  // 2. 위젯들 사이의 공간을 추가하기 위한 목적!

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.redAccent,
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {}, // 눌렀을때 아무런 기능을 안할 것 -> onPressde: () {},
                    child: Text('button1'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('button2'),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Text(
                    '첫번째 텍스트'
                  ),
                  SizedBox(
                    width: 200,
                    height: 100, // 높이를 주지 않고 넓이만 주면 색을 볼 수 없다!
                    child: Container(
                      color: Colors.black87,
                    ),
                  ),
                  Text(
                    '두번째 테스트'
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
