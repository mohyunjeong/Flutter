import 'package:flutter/material.dart';

import 'package:flutter0611/ex01_Button.dart';
import 'package:flutter0611/ex02_checkBox.dart';
import 'package:flutter0611/ex03_switchButton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: ExButton(),
      // home: ExCheckBox(),
      home: ExSwitchButton(),
    );
  }
}

// stf -> Stateful 위젯 불러오기
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title}); // title을 무조건 required 해야 함

  final String title; // 입력받은 title은 이곳에서 저장

  @override
  State<MyHomePage> createState() => _MyHomePageState();
  // createState() : 메소드의 이름 / 람다식으로 작성되어 있음!
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
