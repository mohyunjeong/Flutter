import 'package:flutter/material.dart';

class EXKaKao extends StatelessWidget {
  const EXKaKao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: 50,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.yellowAccent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'image/KaKaoTalk.png',
                width: 30,
                height: 30,
              ),
              SizedBox(
                  width: 20,
              ),
              Text(
                '카카오톡으로 로그인하기',
                style: TextStyle(
                  fontFamily: 'laundrygothic',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
