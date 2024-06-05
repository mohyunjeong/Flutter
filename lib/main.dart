// 플러터를 실행하기 위해 반드시 필요한 material 패키지! -> 어플에 대한 기본 디자인 불러오기
// ctrl + alt + L : 자동 정렬

import 'package:flutter/material.dart';
import 'package:flutter0603/ex01_icon.dart';
import 'package:flutter0603/ex02_column.dart';
import 'package:flutter0603/ex03_image.dart';
import 'package:flutter0603/ex04_image.dart';
import 'package:flutter0603/ex05_row.dart';

// main() : 프로그램을 시작할 수 있는 시작점!
void main() {
  // runApp() : 최초 한번만 호출되는 함수로 플러터의 최상위 함수!
  // 매개변수로 Widget(하늘색 색상)을 받는다!
  runApp(const MyApp());
}

// MyApp 클래스는 위젯을 물려받아 만들어진 클래스 이다!
// 실제 화면에 대한 기능이나 디자인을 담고 있는 곳!
class MyApp extends StatelessWidget {
  // StatelessWidget : 고정되어 있는 화면을 만들 때 사용
  const MyApp({super.key}); // MyApp에 대한 생성자 선언(기본 생성자)

  // 1. 중복정의(오버로딩) / 2. 재정의(오버라이드)
  @override // build 메소드 재정의
  Widget build(BuildContext context) {
    return MaterialApp(
      // build -> rutern 타입 : 메소드
      // title: 'Flutter Demo', // 이름
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      // home : 어플이 시작 되었을 때 가장 먼저 보여주고 싶은 화면을 연결!
      // home: ExPage(),
      // home: ExIcon(),
      // home: ExColumn(),
      // home: ExImage(),
      // home: FinalImage(),
      home: FinalImageRow(),
    );
  }
}

// 나만의 페이지를 만들어 home에 연결하기!
// 단축키 : stl + enter -> 클래스 이름 정하기(Expage)
class ExPage extends StatelessWidget {
  const ExPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold() : 화면을 구성하기 위한 기본 구조! 흰색 바탕 화면을 가진다!
    return Scaffold(
      // AppBar, Body, BottomNavigationBar
      appBar: AppBar(
        title: Text('My Flutter App'), // ;를 안쓰고 ,를 쓰는 이유 : 구분하기 위해
        backgroundColor:
            Colors.red[600], // 색상에 마우스를 대고 ex)[700]과 같은 방법으로 다양하게 색을 지정 가능
      ),
      body: SingleChildScrollView(
        // alt + enter : 위젯들을 감싸는 코드 생성
        scrollDirection: Axis.horizontal, // horizontal(양 옆), vertical
        child: Center(
          child: Row(
            // child(단수) : 하위 위젯을 하나만 가질 수 있다. // 여러 자식들을 row로 만들어주겠다!
            children: [
              // children(복수) : 여러개의 요소를 하나의 자식으로 묶는 기능
              Text(
                '안녕하세요 반갑습니다~',
                style:
                    TextStyle(fontSize: 30, backgroundColor: Colors.redAccent),
                textAlign: TextAlign.center,
                // TextAlign의 영역은 입력된 Text의 크기 만큼만 영역이 지정된다!
              ),
              Text('오늘이 월요일이라니...'),
            ],
          ),
        ),
      ), // ctrl + 클릭 : 사용하는거 확인, ctrl + space : 자주 사용하는거 확인
    ); // return에 붙는 건 웬만해선 ;(세미콜론) 사용
  }
}
