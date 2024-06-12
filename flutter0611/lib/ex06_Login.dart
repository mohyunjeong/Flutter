import 'package:flutter/material.dart';

class ExLogin extends StatefulWidget {
  const ExLogin({super.key});

  @override
  State<ExLogin> createState() => _ExLoginState();
}

class _ExLoginState extends State<ExLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            '로그인 화면',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.yellowAccent,
      ),
      body: GestureDetector( // 화면에 대한 제스처를 감지할 수 있는 위젯
        onTap: (){
          FocusScope.of(context).unfocus(); // 다른 화면을 누르면 키보드가 사라지게함
        },
        child: SingleChildScrollView( // 키보드가 화면에 노출될 때 화면이 가려지는 오류를 막기위한 위젯!
          child: Container(
            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
            color: Colors.white,
            child: Center(
              child: Column(
                children: [
                  Image.asset(
                    'images/kakao.gif',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      label: Text('email 입력'),
                      hintText: 'example@example.com',
                      hintStyle: TextStyle(
                        color: Colors.grey[300],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      label: Text('비밀번호 입력'),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('로그인하기'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
