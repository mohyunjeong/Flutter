import 'package:flutter/material.dart';

class ExLogin extends StatefulWidget {
  const ExLogin({super.key});

  @override
  State<ExLogin> createState() => _ExLoginState();
}

class _ExLoginState extends State<ExLogin> {
  TextEditingController emailCon = TextEditingController();
  TextEditingController pwCon = TextEditingController();

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
      body: GestureDetector(
        // 화면에 대한 제스처를 감지할 수 있는 위젯
        onTap: () {
          FocusScope.of(context).unfocus(); // 다른 화면을 누르면 키보드가 사라지게함
        },
        child: SingleChildScrollView(
          // 키보드가 화면에 노출될 때 화면이 가려지는 오류를 막기위한 위젯!
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
                    controller: emailCon,
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
                    controller: pwCon,
                    obscureText: true,
                    decoration: InputDecoration(
                      label: Text('비밀번호 입력'),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 253, 253, 0),
                      surfaceTintColor: Color.fromARGB(255, 253, 253, 0),
                      foregroundColor: Colors.black,
                    ),
                    onPressed: () {

                      // 로그인을 할 수 있는 사용자인지 체크 후 페이지 이동!
                      if (emailCon.text == 'smhrd' && pwCon.text == '123') {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => dataCheck(
                                  email: emailCon.text,
                                  // 원하는 String 형태를 뽑기 위해 -> .text
                                  pw: pwCon.text,
                                )));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('로그인을 다시 시도하세요.'))
                        );
                      }
                    },
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

class dataCheck extends StatelessWidget {
  final String email; // 일반 변수 -> 변할 수 있는 값 => final(다시는 변할 수 없는)
  final String pw;

  // const -> 상수! 변하지 않는 값!
  const dataCheck(
      {super.key,
      required this.email, // null 값을 받지 않도록 required
      required this.pw}); // const -> 상수(한번 지정시 형태를 그대로 쓰겠다)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            child: Text(
              '$email님 환영합니다.',
              style: TextStyle(fontSize: 30, color: Colors.yellow),
            ),
          ),
        ),
      ),
    );
  }
}
