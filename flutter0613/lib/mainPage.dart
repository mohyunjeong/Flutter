import 'package:flutter/material.dart';
import 'package:flutter0613/sub2Page.dart';

class mainPage extends StatelessWidget {
  const mainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Main Page',
                style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 3, 199, 90),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 3, 199, 90),
                      surfaceTintColor: Color.fromARGB(255, 3, 199, 90),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      // 버튼 클릭시 Main page -> Sub page로 이동하는 기능 연결!
                      // context : 현재 화면에 대한 정보를 담고 있는 변수!
                      // route : 이동하고자 하는 경로를 지정하는 위치!

                      // MaterialPageRoute(builder: builder)
                      // builder : 이동하고자 하는 페이지를 호출! 출발점(context)과 도착점(클래스의 이름) 지정!

                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => subPage())); // ;을 붙여줘야함!

                      // pushAndRemoveUntil : 뒤로가기 누르면 어플이 꺼짐!
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (_) => subPage()), // _ : context
                          (router) => false);
                    },
                    child: Text('Sub Page 이동'),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 3, 199, 90),
                      surfaceTintColor: Color.fromARGB(255, 3, 199, 90),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      // 버튼 클릭시 Main page -> Sub2 page로 이동하는 기능 연결!

                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => sub2Page()));

                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (_) => sub2Page()), // _ : context
                              (router) => false);
                    },
                    child: Text('Sub2 Page 이동'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// 새로운 클래스를 생성 할 수 있는 영역!
class subPage extends StatelessWidget {
  const subPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sub Page',
                style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 3, 199, 90),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 3, 199, 90),
                      surfaceTintColor: Color.fromARGB(255, 3, 199, 90),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      // 버튼 클릭시 Sub page -> Main page로 이동하는 기능 연결!

                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => mainPage()));

                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (_) => mainPage()), // _ : context
                              (router) => false);
                    },
                    child: Text('Main Page 이동'),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 3, 199, 90),
                      surfaceTintColor: Color.fromARGB(255, 3, 199, 90),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      // 버튼 클릭시 Sub page -> sub2 page로 이동하는 기능 연결!

                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => sub2Page()));

                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (_) => sub2Page()), // _ : context
                              (router) => false);
                    },
                    child: Text('Sub2 Page 이동'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
