// 5b7403969c39771b3a9b321993fe9666

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Location extends StatelessWidget {
  const Location({super.key});

  // 위치 정보에 대한 기능을 수행하는 메소드
  void getLocation() async {
    await Geolocator.requestPermission();

    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high); // await가 없으면 오류!

    print(position);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.lightBlue, foregroundColor: Colors.white),
          onPressed: () {
            // 나의 위치를 찾아올 수 있는 통신!
            getLocation();
          },
          child: Text('내 위치'),
        ),
      ),
    );
  }
}
