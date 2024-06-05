// 디자인을 할 수 있는 클래스 생성!

import 'package:flutter/material.dart';
// cupertino -> ios

class ExIcon extends StatelessWidget {
  const ExIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( // 기본구조 : appBar, body, bottom navigation
      body: SafeArea( // 실행 시 상태바를 제외한 영역을 안전하게 body 영역으로 잡아준다!
        // alt + enter -> widget -> SageArea 수정
        child: Row( // Row : 가로로 구성
          children: [
            Text(
              'android 아이콘 사용하기',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.pink[300],
              ),
            ), // Text의 크기를 35로 수정해 보자!
            Icon(
              Icons.headphones_battery,
              color: Colors.purple[200],
              size: 40,
            ),
            // IconButton()의 경우 required에 대한 요소들은 필수적으로 지정해야 한다!
            // onPressed : 버튼 클릭 시 어떤 진행을 할 것 인지
            // icon : 어떤 아이콘을 버튼으로 사용할 것 인지
            IconButton(
                onPressed: (){
                  print('버튼 클릭!');
                },
                icon: Icon(
                  Icons.add,
                  color: Colors.blue[300],
                )), // Require(onPressed, icon)은 강제성을 가짐 -> 추가적인 작업(어떤 기능? 어떤 아이콘?)
          ],
        ),
      ),
    ); // Placeholder : 검정색 화면
  }
}
