import 'package:flutter/material.dart';

class ExButton extends StatefulWidget {
  const ExButton({super.key});

  @override
  State<ExButton> createState() => _ExButtonState();
}

class _ExButtonState extends State<ExButton> {

  int count = 0;

  @override
  Widget build(BuildContext context) {
    // int count = 0;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$count', style: TextStyle(fontSize: 30,),),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                // 버튼이 클릭되었을때 상태를 체크할 수 있는 setState() 연결!
                setState(() {
                  count++;
                });
              }, child: Text('클릭',),),
            ],
          ),
        ),
      ),
    );
  }
}
