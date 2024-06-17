import 'package:flutter/material.dart';

class ExHorizontal extends StatelessWidget {
  const ExHorizontal({super.key});

  // 1. 리스트 뷰의 데이터 생성
  // 2. 리스트 뷰 디자인 생성
  //  - 필수요소 체크하기!
  //  - 화면 실행시 발생되는 오류 해결하기!

  @override
  Widget build(BuildContext context) {
    var intList2 = List<int>.generate(
        50, (i) => i++); // 같은 폴더 안에 동일한 변수명을 가지면 충돌이 일어날 확률이 높기 때문에 변경!

    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          // 리스트뷰의 기본 형태는 Vertical!
          // 형태를 바꾸기 위한 기능 -> scrollDirection -> Axis.horizontal,
          scrollDirection: Axis.horizontal,

          itemCount: intList2.length,
          itemBuilder: (context, index) => Center(
            child: Container(
              color: Colors.pink[100],
              margin: EdgeInsets.all(4),
              child: Text(
                '${intList2[index] + 1}', // 1부터 실행하고 싶으면 + 1
                style: TextStyle(fontSize: 25, color: Colors.pink),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
