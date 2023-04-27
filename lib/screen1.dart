import 'package:flutter/material.dart';

class Screen1Widget extends StatefulWidget {
  const Screen1Widget({super.key});

  @override
  State<StatefulWidget> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1Widget> {
  @override
  void initState() {
    super.initState();
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        content: Text("これは絶対に表示されない"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Text("必ずアプリがクラッシュする画面");
  }
}
