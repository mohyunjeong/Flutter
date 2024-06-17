import 'package:flutter/material.dart';

class ExRyan extends StatefulWidget {
  const ExRyan({super.key});

  @override
  State<ExRyan> createState() => _ExRyanState();
}

// 1. 데이터를 관리하기 위한 리스트 생성! -> 이미지 / 텍스트

var imgList = [
  'images/ryan1.jpg',
  'images/ryan2.png',
  'images/ryan3.jpg',
  'images/ryan4.png',
  'images/ryan5.png',
  'images/ryan6.jpg'
];

var txtList = ['리틀 라이언', '반짝 라이언', '하트 라이언', '춘식이와의 만남', '룸메는 춘식이', '좋아요 라이언'];

class _ExRyanState extends State<ExRyan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 액션을 감지하는 버튼 생성
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 버튼이 눌리면 리스트가 추가되는 기능 설계!
          setState(() {
            imgList.add('images/t1.jpg');
            txtList.add('우승 가자!');
          });
        },
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
        backgroundColor: Colors.yellow,
      ),

      // 2. ListView 생성 작업 시작!
      body: SafeArea(
        child: ListView.builder(
          itemCount: imgList.length,
          itemBuilder: (context, index) => Card(
            child: Container(
              color: Colors.black,
              child: Row(
                children: [
                  // 각각의 이미지의 크기를 일정한 비율로 맞추기 위한 Expanded 위젯 사용!
                  Expanded(child: Image.asset(imgList[index])),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          '${txtList[index]}',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          '${index + 1} 번째 라이언',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
