import 'package:flutter/material.dart';

class ExTextField extends StatefulWidget {
  const ExTextField({super.key});

  @override
  State<ExTextField> createState() => _ExTextFieldState();
}

class _ExTextFieldState extends State<ExTextField> {

  // 텍스트 필드의 값을 가져올 수 있는 controller 생성
  // -> 각각의 필드를 따로 관리하기 위하여 텍스트 필드의 갯수만큼 생성!
  TextEditingController emailCon =
      TextEditingController(); // 기능을 가져아하기 때문에 위젯 사용
  TextEditingController pwCon =
  TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          // padding을 주겠다
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              TextField(
                keyboardType: TextInputType.emailAddress,
                // keyboardType을 email로 하겠다 -> 키보드에 @
                // TextField 꾸미기
                decoration: InputDecoration(
                  // label: Text('email'), // email을 입력할 수 있는 공간이라고 알려줌
                  label: Icon(Icons.email, color: Colors.redAccent,), // 아이콘을 띄울 수도 있음
                  hintText: 'email을 입력해 주세요.', // Text 위젯을 사용하지 않아도 문자가 들어간다!
                  hintStyle: TextStyle(
                      color: Colors.redAccent), // TextStyle 위젯을 이용해 디자인 가능
                ),
                controller: emailCon,
              ),
              TextField(
                // keyboardType: TextInputType.text, -> 기본값이기 때문에 생략 가능
                obscureText: true, // 입력된 값들을 * 표시! -> 중요한 정보를 입력할 때 사용
                decoration: InputDecoration(
                  label: Icon(Icons.password, color: Colors.lightBlue,),
                  hintText: '비밀번호를 입력하세요',
                  hintStyle: TextStyle(color: Colors.lightBlue),
                ),
                controller: pwCon,
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  // 버튼이 눌리면 텍스트 필드에 입력된 내용들 가져오기!

                  // ScaffoldMessenger.of(context).showSnackBar(
                  //   SnackBar(content: Text('${emailCon.text} / ${pwCon.text}'),), // 포맷팅 사용 -> $
                  // ); // 메신저를 띄우겠다 -> 보안 때문에 잘 안띄움

                  String email = emailCon.text;
                  print(email); // 내용을 담아야 한다면!

                  // print(emailCon.text); -> 확인용

                  // 서버를 통하여 해당 데이터를 DB에 전달
                  // -> DB에 있는 값을 체크하고 결과를 다시 돌려 받는다
                  // -> 결과 값에 따라 화면 이동 / 현 화면 유지

                },
                child: Text('login'), // 버튼 이름
              ),
            ],
          ),
        ),
      ),
    );
  }
}
