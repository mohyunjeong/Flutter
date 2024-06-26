import 'package:flutter/material.dart';
import 'package:flutter0619/Weather/SampleWeather.dart';
import 'package:intl/intl.dart';
import 'package:timer_builder/timer_builder.dart';

class WeatherMain extends StatelessWidget {
  const WeatherMain({super.key, required this.w});

  final SampleWeather w;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[100],
        elevation: 0.0,
      ),
      body: Container(
          color: Colors.lightBlue[100],
          padding: EdgeInsets.all(12),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  w.name,
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '${w.main.temp}도', // 숫자는 int라 포맷팅을 해줘야 함!
                      style: TextStyle(fontSize: 35, color: Colors.red),
                    ),
                    // intl
                    // DataFormat("출력방법")
                    // y - 연도
                    // M - 월
                    // d - 일
                    // yy년 MM월 dd일 - 24년 06월 26일
                    // yyyy년 - 2024년
                    // Text('00년 00월 00일',style: TextStyle(fontSize: 20)),
                    Text(DateFormat('yy년 MM월 dd일').format(DateTime.now()),
                        style: TextStyle(fontSize: 16)),

                    // time_builder 라이브러리
                    TimerBuilder.periodic(Duration(seconds: 1),
                        builder: (context) {
                      return Text(DateFormat('HH:mm:ss').format(DateTime.now()),
                          style: TextStyle(fontSize: 18));
                      //Text('00시 00분',style: TextStyle(fontSize: 20))
                    })
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                            'https://openweathermap.org/img/wn/${w.weather[0].icon}.png'),
                        // weather[] -> wheather이 리스트이기 때문 -> 결과값
                        //Icon(Icons.sunny),
                        Text(w.weather[0].main)
                        // String이기 때문에 포맷팅이 따로 필요하지 않음!
                      ],
                    ),
                  ),
                  Container(
                    width: 1,
                    height: double.infinity,
                    color: Colors.grey[300],
                    margin: EdgeInsets.all(24),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(
                            Icons.water_drop_outlined,
                            size: 40,
                          ),
                        ),
                        Text('${w.main.humidity}')
                      ],
                    ),
                  ),
                  Container(
                    width: 1,
                    height: double.infinity,
                    color: Colors.grey[300],
                    margin: EdgeInsets.all(24),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(
                            Icons.wind_power,
                            size: 40,
                          ),
                        ),
                        Text('${w.wind.speed}'),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ])),
    );
  }
}
