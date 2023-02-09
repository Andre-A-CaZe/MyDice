import 'package:flutter/material.dart';
import 'package:mydices_sample/dices.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: const Text(
          "Dados",
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
      ),
      body: const MyDices(),
    );
  }
}
