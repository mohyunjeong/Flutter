import 'package:flutter/material.dart';

class ExSwitchButton extends StatefulWidget {
  const ExSwitchButton({super.key});

  @override
  State<ExSwitchButton> createState() => _ExSwitchButtonState();
}

class _ExSwitchButtonState extends State<ExSwitchButton> {
  bool isOn = true;

  List<bool> isOnList = [false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '알람 끄기',
                  style: TextStyle(fontSize: 30),
                ),
                Switch(
                    value: isOnList[0],
                    onChanged: (value) {
                      setState(() {
                        isOnList[0] = value!;
                      });
                    },
                  activeColor: Colors.redAccent,),
              ],
            ),
            SwitchListTile(
              // 버튼말고 항목을 눌러도 클릭이 가능
              title: Text('자동 밝기 끄기'),
              value: isOnList[1],
              onChanged: (value) {
                setState(() {
                  isOnList[1] = value!;
                });
              },
              activeColor: Colors.lightBlueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
