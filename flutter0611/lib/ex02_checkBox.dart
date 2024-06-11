import 'package:flutter/material.dart';

class ExCheckBox extends StatefulWidget {
  const ExCheckBox({super.key});

  @override
  State<ExCheckBox> createState() => _ExCheckBoxState();
}

class _ExCheckBoxState extends State<ExCheckBox> {
  // 체크박스의 체크여부를 담을 수 있는 변수 생성!
  bool isChecked = false;

  // 여러개의 체크 여부를 한번에 관리할 수 있는 list 생성
  List<bool> isCheckedList = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Checkbox(
                    value: isChecked,
                    onChanged: (value) {
                      setState(() {
                        isChecked = value!; // value! : null 값이 아니면 담아줌
                      });
                    }),
                Text('첫번째 체크박스'),
              ],
            ),
            // value : 체크의 여부를 판단할 수 있는 요소!
            // ture -> O / false -> X
            Row(
              children: [
                Checkbox(
                    value: isChecked,
                    onChanged: (value) {
                      setState(() {
                        isChecked = value!;
                      });
                    }),
                Text('두번째 체크박스'),
              ],
            ),

            CheckboxListTile(
                // cehckboxlist는 체크박스가 기본적으로 오른쪽에 정렬
                title: Text('세번째 체크박스'),
                controlAffinity: ListTileControlAffinity.leading,
                // 체크박스 위치를 왼쪽으로 변경
                value: isCheckedList[0],
                onChanged: (value) {
                  setState(() {
                    isCheckedList[0] = value!;
                  });
                }),
            CheckboxListTile(
                title: Text('네번째 체크박스'),
                controlAffinity: ListTileControlAffinity.leading,
                value: isCheckedList[1],
                onChanged: (value) {
                  setState(() {
                    isCheckedList[1] = value!;
                  });
                }),
            CheckboxListTile(
                title: Text('다섯번째 체크박스'),
                controlAffinity: ListTileControlAffinity.leading,
                value: isCheckedList[2],
                onChanged: (value) {
                  setState(() {
                    isCheckedList[2] = value!;

                    // 스낵바 생성!

                    if (isCheckedList[2] == true) {
                      // .of(context) :
                      ScaffoldMessenger.of(context).showSnackBar(
                        // ScankBar() 위젯을 사용하여 띄우고자 하는 내용 연결
                        SnackBar(
                          content: Text('다섯번째 체크박스'),
                        ),
                      );
                    }
                  });
                }),
          ],
        ),
      ),
    );
  }
}
