import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'UserModel.dart';

// 통신이 필요하다! -> Stateful 설계!
// 통신을 진행할 경우 필요한 라이브러리! -> http 라이브러리!
class ExJson extends StatefulWidget {
  const ExJson({super.key});

  @override
  State<ExJson> createState() => _ExJsonState();
}

class _ExJsonState extends State<ExJson> {
  // 대량의 데이터를 담을 수 있는 리스트 구조 선언!
  List<User> userList = [];

  // 데이터 통신 시도!
  Future<List<User>> getInfo() async {
    // 통신을 [요청 -> request]할 url 주소 필요! -> String 타입으로 지정!
    String url = "https://jsonplaceholder.typicode.com/users";

    // 요청 url로부터 [응답 -> response]값 받아오기!
    var res = await get(Uri.parse(url));
    print(res.statusCode); // 200 -> 응답이 확인 된다
    // 200 코드 : 응답 성공시!
    // 500 코드 : 데이터에 문제가 있을 경우
    // 404 코드 : 페이지에 대한 오류

    // print("res : $res"); // res : Instance of 'Response'

    userList = userFromJson(res.body); // res.body -> res가 담은 값 중 몸체만 가져오겠다
    print(userList[0].address.city); // Gwenborough
    // print(userList[0].name); // Leanne Graham
    // print(userList[0]); Instance of 'User'

    return userList;
  }

  @override
  Widget build(BuildContext context) {
    getInfo(); // 호출해서 사용할거기 때문에 필요!
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
          future: getInfo().then((value) => userList = value),
          builder: (context, snapshot) {
            // snapshot : 결과 값!
            // 통신의 상태에 따라 화면을 설계 할 수 있는지 없는지 판단!
            if (!snapshot.hasData) {
              // 데이터가 없다면
              // 로딩 화면 띄우기
              return Center(
                  child: CircularProgressIndicator()); // 동그랗게 돌아가는 progress
            } else {
              // 데이터를 가지고 있다면
              // 띄워줄 데이터가 있다면 해당 내용을 화면으로 return!
              return ListView.builder(
                  itemCount: userList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(userList[index].name),
                      leading: Icon(
                        Icons.account_circle,
                        color: Colors.orange,
                      ),
                      subtitle: Text(userList[index].address.city),
                      trailing: Icon(
                        Icons.android,
                        color: Colors.lightGreen,
                      ),
                    );
                  });
            }
          },
        ), // future -> 데이터, builder -> 디자인
      ),
    );
  }
}
