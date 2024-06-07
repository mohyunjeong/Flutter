import 'package:flutter/material.dart';

class ExContainer extends StatelessWidget {
  // 정적인 StatelessWidget / 동적 StatefulWidget
  const ExContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          // 아무런 변화가 없음
          // Container 생성 시 크기는 body의 영역만큼 생성이 된다!
          // color: Colors.red, // color은 Decoration과 함께 쓸 수 없음!!

          // Container 크기 지정하기
          width: 200,
          height: 200,

          // Container 내부 정렬 지정하기!
          alignment: Alignment.center,
          // Text()에 사용한 Center()과 같은 기능!

          // margin, padding 사용하기!
          // margin: EdgeInsets.fromLTRB(10, 0, 10, 10), // 왼, 위, 오, 아래 위치에 마진
          margin: EdgeInsets.all(15),
          // 전체적으로 마진 값을 주겠다!
          padding: EdgeInsets.all(30),
          // 전체적으로 padding 값을 주겠다

          // Container 테두리 사용하기
          // Container 요소에서 사용되는 color는 decoration 요소와 함께 쓰일 수 없다!
          // => 색상을 지정하고 싶다면 decoration 안에서 color 지정하기!
          decoration: BoxDecoration(
              color: Colors.red, // 테두리 안 색상
              border: Border.all(
                // 테두리 전방향으로!
                color: Colors.black, // 테두리 색
                width: 3, // 테두리 두께 설정!
              ),
              // Container의 모서리를 둥글게 만드는 요소!
              borderRadius:
                  // BorderRadius.only(  // BorderRadius.only -> 특정 위치에서만 적용
                  //     topLeft:
                  //         Radius.circular(20)) // Radius.circular : 둥글기의 정도
                  // BorderRadius.all(Radius.circular(50)) -> 전체적인 범위에
                  BorderRadius.circular(30) // all과 only 없이 사용 가능
              ),
          // decoration의 BoxDecoration() 위젯을 불러와야함

          // Container안에 위젯을 추가하기 위한 하위계층 생성!
          // => 글자가 가운데에 올 수 있도록 수정해 보자!
          // => Text()이 Center 위젯으로 감싸지면 해결!
          child: Text(
            'Container',
            style: TextStyle(fontSize: 30, fontFamily: 'laundrygothic'),
            // textAlign: TextAlign.center, // 텍스트가 위치하고 있는 라인에서 가운데 정렬!(start : 앞, end : 뒤)
          ), // ctrl + space -> child 선택
        ),
      ),
    );
  }
}
