import 'package:flutter/material.dart';

import 'screen4.dart';
import 'main.dart';

class Screen3Widget extends StatefulWidget {
  const Screen3Widget({super.key});

  @override
  State<StatefulWidget> createState() => _Screen3State();
}

// 受け取りたい画面でRouteAwareを実装する
class _Screen3State extends State<Screen3Widget> with RouteAware {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // 画面遷移時に通知登録をする(contextを利用するため、 initState() ではなく didChangeDependencies() 内で実装する)
    routeObserver.subscribe(this, ModalRoute.of(context)!);
  }

  @override
  void dispose() {
    // 画面破棄時に通知解除する
    routeObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Screen4Widget()));
              },
              child: const Text("画面4へ"),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void didPop() {
    print("Screen3: didPop()");
  }

  @override
  void didPopNext() {
    print("Screen3: didPopNext()");
  }

  @override
  void didPush() {
    print("Screen3: didPush()");
  }

  @override
  void didPushNext() {
    print("Screen3: didPushNext()");
  }
}
