import 'package:flutter/material.dart';
import 'package:flutter0613/config/routeName.dart';

class RoutePage extends StatelessWidget {
  const RoutePage({super.key});

  // 라우팅 -> 이름을 기준으로 경로를 연결하여 관리하는 기술!

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, RouteName.redPage);
                },
                child: Text('red'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  surfaceTintColor: Colors.red,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, RouteName.greenPage);
                },
                child: Text('green'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  surfaceTintColor: Colors.green,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, RouteName.bluePage);
                },
                child: Text('blue'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  surfaceTintColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
