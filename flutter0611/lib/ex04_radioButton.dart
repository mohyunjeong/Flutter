import 'package:flutter/material.dart';

// stl -> 디자인 위주, 간단한 로직
// stf -> setState(), 상태가 변화하거나 화면에 이동이 있는 경우

class ExRadioButton extends StatefulWidget {
  const ExRadioButton({super.key});

  @override
  State<ExRadioButton> createState() => _ExRadioButtonState();

  // enum Gender {man, woman} -> 이 위치에서 오류!
}

// Radio 버튼 사용시 필수사항!
// 버튼들의 그룹을 먼저 지정! => 열거형으로 지정!
// +) 열거시 클래스의 구조 안이나, 메소드의 구조 안에서 열거가 불가능 하다!
enum Gender {man, woman}

class _ExRadioButtonState extends State<ExRadioButton> {

  // 라디오 버튼이 선택된 값을 관리할 수 있는 변수
  Gender g = Gender.man;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // groupValue : 현재 선택된 값을 의미하는 내용!
            Row(
              children: [
                Radio(value: Gender.man, groupValue: g, onChanged: (value){
                  setState(() {
                    g = value!; // 현재 값을 내가 선택한 값에 담아주겠다
                  });
                }),
                Text('남성'),
              ],
            ),
            Row(
              children: [ // 중복을 막기 위해 groupValue 존재
                Radio(value: Gender.woman, groupValue: g, onChanged: (value){
                  setState(() {
                    g = value!;
                  });
                }),
                Text('여성'),
              ],
            ),

            RadioListTile(
              title: Text('남성'),
              value: Gender.man, groupValue: g, onChanged: (value){
              setState(() {
                g = value!;
              });
            }),

            RadioListTile(
                title: Text('여성'),
                value: Gender.woman, groupValue: g, onChanged: (value){
              setState(() {
                g = value!;
              });
            }),
          ],
        ),
      ),
    );
  }
}
