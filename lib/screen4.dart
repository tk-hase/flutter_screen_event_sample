import 'package:flutter/material.dart';

import 'main.dart';

class Screen4Widget extends StatefulWidget {
  const Screen4Widget({super.key});

  @override
  State<StatefulWidget> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4Widget> with RouteAware {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context)!);
  }

  @override
  void dispose() {
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
                Navigator.of(context).pop();
              },
              child: const Text("戻る"),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void didPop() {
    print("Screen4: didPop()");
  }

  @override
  void didPopNext() {
    print("Screen4: didPopNext()");
  }

  @override
  void didPush() {
    print("Screen4: didPush()");
  }

  @override
  void didPushNext() {
    print("Screen4: didPushNext()");
  }
}
