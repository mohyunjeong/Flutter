import 'package:flutter/material.dart';
import 'package:flutter0619/Weather/SampleWeather.dart';
import 'package:http/http.dart';

class ExWeather extends StatelessWidget {
  // StatelessWidget 뒤에서 ctrl + space -> 2번째 material 클릭!
  const ExWeather({super.key});

  @override
  Widget build(BuildContext context) {
    getWeaterData();
    return const Placeholder();
  }
}

void getWeaterData() async {
  Response res = await get(Uri.parse(
      "https://api.openweathermap.org/data/2.5/weather?lat=35.14537&lon=126.919163&appid=5b7403969c39771b3a9b321993fe9666&units=metric"));
  print(res.statusCode);

  if (res.statusCode == 200) {

  }

  print(res.body); // res.body --> String # 해당 결과 값들 받아오기

  SampleWeather w = sampleWeatherFromJson(res.body);
  print(w.main.temp);
}