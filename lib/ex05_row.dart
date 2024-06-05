import 'package:flutter/material.dart';

class FinalImageRow extends StatelessWidget {
  const FinalImageRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // 상태바도 포함!
        title: Text(
          '두번째 예제',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'bmdohyun',
          ),
        ),
        backgroundColor: Colors.lightGreen,
      ),
      body: Row(
        // 연결 시 위치를 어디로 잡아 줄 것인지 설정!
        crossAxisAlignment: CrossAxisAlignment.start, // 맨 위 : start, 맨 아래 : end
        children: [
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'image/t1.jpg',
                    width: 120,
                    height: 120,
                  ),
                  Text(
                    '안녕 내 이름은 t1이야!',
                    style: TextStyle(
                      fontFamily: 'laundrygothic',
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'image/sol.png',
                    width: 120,
                    height: 120,
                  ),
                  Text(
                    '안녕 내 이름은 솔선이야!',
                    style: TextStyle(
                      fontFamily: 'laundrygothic',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
