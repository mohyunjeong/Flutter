import 'package:flutter/material.dart';

class ExStack extends StatelessWidget {
  const ExStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          // alignment: Alignment.center, // 가운제 정렬
          children: [

            // 위치가 동일한 곳에서 시작되기 때문에 크기가 마지막에 작성된게 크면 가려지고, 작으면 보임
            
            // Positioned은 하나의 요소에만 사용해선 안된다!
            // => 여러 요소들이 Positioned으로 감싸져야 결과를 확인할 수 있다!
            Positioned(
              top: 50,
              left: 32,
              child: Container(
                width: 110,
                height: 110,
                color: Colors.red,
              ),
            ),

            Positioned(
              bottom: 20,
              right: 15,
              child: Container(
                width: 80,
                height: 80,
                color: Colors.white,
              ),
            ),

            Positioned(
              top: 14,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.black87,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
