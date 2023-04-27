import 'package:flutter/material.dart';
import 'screen1.dart';
import 'screen2.dart';
import 'screen3.dart';

void main() {
  runApp(const MyApp());
}

// グローバル変数として保持する
final routeObserver = RouteObserver<ModalRoute>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorObservers: [routeObserver], // ←新規追加
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: ElevatedButton(
              child: const Text("画面1へ(遷移するとアプリが落ちます)"),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Screen1Widget()));
              },
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: ElevatedButton(
              child: const Text("画面2へ"),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Screen2Widget()));
              },
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: ElevatedButton(
              child: const Text("画面3へ"),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Screen3Widget()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
