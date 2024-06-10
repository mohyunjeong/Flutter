import 'package:flutter/material.dart';

class ExAxis extends StatelessWidget {
  const ExAxis({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [

            Container( // 원본 Container
              color: Colors.redAccent,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('첫번째 텍스트'),
                  Text('두번째 텍스트'),
                  Text('세번째 텍스트'),
                ],
              ),
            ),

            Container(
              color: Colors.pinkAccent,
              height: 100,
              child: Row(
                // start : 맨 앞, end : 맨 뒤, center : 가운데
                // spaceBetween : 양 끝을 화면에 고정시키고 나머지 위젯을 일정 간격으로 배치하는 속성!
                // spaceEvenly : 양 끝과 위젯들 사이사이에 일정한 간격을 주는 속성! -> 모든 여백의 크기가 동일
                // spaceAround : 가운데를 기준으로 양 옆에 여백을 많이 두고 화면의 양 끝은 여백이 작게 들어가는 속성!,
                //               위젯의 양 옆에 일정한 여백을 주는 속성!

                // mainAxisAlignment: MainAxisAlignment.spaceAround, // 가운데 라인에서 정열(가로)

                // start : 맨 위, center : 가운데, end : 맨 아래
                crossAxisAlignment: CrossAxisAlignment.end, // 세로

                children: [
                  Text('첫번째 텍스트'),
                  Text('두번째 텍스트'),
                  Text('세번째 텍스트'),
                  // Text('네번째 텍스트'),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
