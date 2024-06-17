import 'package:flutter/material.dart';

class BottomPage extends StatefulWidget {
  const BottomPage({super.key});

  @override
  State<BottomPage> createState() => _BottomPageState();
}

class _BottomPageState extends State<BottomPage> {

  int index = 0; // 화면을 관리하기 위한 인덱스 변수!

  List<Widget> pageList = [Home(), Chat(), Setting()]; // class는 StatelessWidget을 extends한 것이기 때문에 Widget으로 관리할 수 있게 만들어야함

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[index], // [화면에 대한 클래스를 관리하는 리스트][index],
      // [
      //   Center(
      //     child: Text(
      //       'home 화면',
      //       style: TextStyle(color: Colors.red),
      //     ),
      //   ),
      //   Center(
      //     child: Text(
      //       'chat 화면',
      //       style: TextStyle(color: Colors.yellow),
      //     ),
      //   ),
      //   Center(
      //     child: Text(
      //       'setting 화면',
      //       style: TextStyle(color: Colors.black),
      //     ),
      //   ),
      // ][index], // [?] : 이 리스트에 있는 ?번째 화면을 사용하겠다

      bottomNavigationBar: BottomNavigationBar(

        currentIndex: index, // bottom 버튼 몇번째 걸 선택했는지 체크

        // 여러개의 화면과 bottom 버튼 연결하기!
        onTap: onItemTap,
        // 아이템이 선택 됐을 때, 진행할 메소드 연결!

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
        showSelectedLabels: false,
        // 기본값 true. 안보이게 하겠다 -> false
        showUnselectedLabels: false,

        // bottom 영역 스타일 지정!
        backgroundColor: Colors.white,
        selectedItemColor: Colors.lightBlue,
        unselectedItemColor: Colors.black87,
      ),
    );
  }

  void onItemTap(int i) {
    setState(() {
      index = i;
    });
  }
} // stf 클래스의 범위

// 각각의 버튼 클릭시 띄워질 화면 설계! -> 클래스로 생성 후 관리!
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'home',
          style: TextStyle(color: Colors.red),
        ),
      ),
    );
  }
}

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'chat',
          style: TextStyle(color: Colors.yellow),
        ),
      ),
    );
  }
}

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'setting',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}