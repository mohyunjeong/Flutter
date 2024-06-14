import 'package:flutter/material.dart';

//

class BottomPage extends StatefulWidget {
  const BottomPage({super.key});

  @override
  State<BottomPage> createState() => _BottomPageState();
}

class _BottomPageState extends State<BottomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: [
      //   Center(
      //     child: Text('home'),
      //   )
      // ],
      bottomNavigationBar: BottomNavigationBar(
        // items : 여러개의 버튼을 관리할 수 있는 요소!
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              // color: Colors.red,
            ),
            label: 'home', // label을 ''로 두면 빈칸으로 나옴
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
              // color: Colors.yellow,
            ),
            label: 'chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              // color: Colors.black,
            ),
            label: 'setting',
          )
        ],

        // 라벨에 대한 스타일 지정!
        showSelectedLabels: false, // 기본값 true. 안보이게 하겠다 -> false
        showUnselectedLabels: false,

        // bottom 영역 스타일 지정!
        backgroundColor: Colors.white,
        selectedItemColor: Colors.lightBlue,
        unselectedItemColor: Colors.black87,
      ),
    );
  }
}

// 각각의 버튼 클릭시 띄워질 화면 설계! -> 클래스로 생성 후 관리!
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('home',style: TextStyle(color: Colors.red),),
    );
  }
}
