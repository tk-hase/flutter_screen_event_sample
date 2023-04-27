import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Screen2Widget extends StatefulWidget {
  const Screen2Widget({super.key});

  @override
  State<StatefulWidget> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2Widget> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    // ↓忘れずに！
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    super.dispose();
    // ↓忘れずに！
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("画面2"),
        centerTitle: true,
      ),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("SCREEN2!"),
            ElevatedButton(
              onPressed: () {
                SystemNavigator.pop();
              },
              child: const Text("アプリを終了する"),
            )
          ],
        ),
      ),
    );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // アプリ全体のライフサイクルイベント変化
    switch (state) {
      case AppLifecycleState.resumed:
        print("AppLifecycleState.resumed");
        break;
      case AppLifecycleState.paused:
        print("AppLifecycleState.paused");
        break;
      case AppLifecycleState.inactive:
        print("AppLifecycleState.inactive");
        break;
      case AppLifecycleState.detached:
        print("AppLifecycleState.detached");
        break;
    }
  }
}
