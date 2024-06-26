import 'package:flutter/material.dart';
import 'package:flutter0619/Weather/SampleWeather.dart';
import 'package:flutter0619/Weather/weather_main.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart';

// 위치 정보 파악
// 해당 위치에 맞는 날씨 가지고 오기

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    getLocation(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[100],
        elevation: 0.0, // AppBar가 떠 있는듯한 느낌을 줄 때 사용!
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.lightBlue[100],
        child: Center(
          child: Container(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}

void getLocation(context) async {
  await Geolocator
      .requestPermission(); // requestPermission : 권한 설정 물어보는 코드 -> await가 꼭 필요!
  Position position = await Geolocator.getCurrentPosition();

  double lat = position.latitude;
  double lon = position.longitude;

  print("lat : $lat, lon : $lon");
  getWeather(lat, lon, context);
}

void getWeather(double lat, double lon, context) async {
  String url =
      "https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=5b7403969c39771b3a9b321993fe9666&units=metric";
  print(url);
  Response res = await get(Uri.parse(url));
  print(res.body);
  SampleWeather w1 = sampleWeatherFromJson(res.body);

  // 페이지 이동
  Navigator.push(
    context,
    MaterialPageRoute(builder: (_) => WeatherMain(w: w1)),
  );
  // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) {
  //   return WeatherMain(
  //     w: w,
  //   );
  // }), (route) => false);
}
