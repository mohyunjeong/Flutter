import 'package:flutter/material.dart';

import 'package:flutter0613/mainPage.dart';
import 'package:flutter0613/popPage.dart';
import 'package:flutter0613/screen/bottomPage.dart';
import 'package:flutter0613/screen/routePage.dart';

import 'package:flutter0613/screen/redPage.dart';
import 'package:flutter0613/screen/greenPage.dart';
import 'package:flutter0613/screen/bluePage.dart';

import 'config/routeName.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      // 라우트 기법은 App에서 연결을 해야 한다!
      // routes: {
      //   '/red' : (context) => RedPage(),
      //   '/green' : (context) => GreenPage(),
      //   '/blue' : (context) => BluePage(),
      // },

      // routes: rn,

      // home: mainPage(),
      // home: popMainPage(),
      // home: RoutePage(),
      home: BottomPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
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
