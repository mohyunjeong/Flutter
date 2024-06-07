import 'package:flutter/material.dart';

class ExFlexible extends StatelessWidget {
  const ExFlexible({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [

            // 1. Flexible과 Expanded를 사용하지 않았을 때!
            SizedBox(height: 20,),
            Text('Flexible, expanded 미사용'),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                  width: 300,
                  height: 50,
                  color: Colors.red,
                ),
                Container(
                  width: 300, // 크기가 넘치기 때문에 오류가 뜸!
                  height: 50,
                  color: Colors.black87,
                ),
              ],
            ),
            
            SizedBox(height: 50,), // 여백

            // 2. FlexFit.loose를 사용했을 때!
            Text('Flexible 사용'),
            SizedBox(height: 20,),
            Row(
              children: [
                // Flexible은 하위 위젯을 가지고 있으며, Row나 Column 안에서만 생성이 가능하다!
                Flexible( // Row 안에서 생성
                  fit: FlexFit.loose, // loose(비율)하게 요소를 주겠다
                  // ctrl + space : 요소 확인
                  child: Container( // Flexible 하위 위젯
                    width: 300,
                    height: 50,
                    color: Colors.red,
                  ),
                ),
                Flexible( // Flexible은 비율로 주기 때문에 오류X
                  // 기본 세팅 값 : FlexFit.loose,
                  // fit: FlexFit.loose, // loose : 남은 여백을 가능하게 줌
                  child: Container(
                    width: 100,
                    height: 50,
                    color: Colors.black87,
                  ),
                )
              ],
            ),

            SizedBox(height: 50,),

            // 3. FlexFit.tight를 사용했을 때!
            Text('FlexFit.tight 사용'),
            SizedBox(height: 20,),
            Row(
              children: [
                Flexible(
                  fit: FlexFit.tight, // 여백 없이 무조건 꽉 채워서!
                  child: Container(
                    width: 300,
                    height: 50,
                    color: Colors.red,
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: Container(
                    width: 100,
                    height: 50,
                    color: Colors.black87,
                  ),
                )
              ],
            ),

            SizedBox(height: 50,),

            // 3. Expanded를 사용했을 때!
            Text('Expanded 사용'),
            SizedBox(height: 20,),
            Row(
              children: [
                Expanded( // 여백을 남겨두지 않고 비율대로 출력하겠다!
                  flex: 1,
                  child: Container(
                    width: 300,
                    height: 50,
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    width: 100,
                    height: 50,
                    color: Colors.black87,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: 100,
                    height: 50,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
