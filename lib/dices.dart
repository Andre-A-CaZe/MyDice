import 'package:flutter/material.dart';
import 'dart:math';

class MyDices extends StatefulWidget {
  const MyDices({super.key});

  @override
  State<MyDices> createState() => _MyDicesState();
}

class _MyDicesState extends State<MyDices> {
  String one = 'assets/img/dice1.png';
  String two = 'assets/img/dice1.png';

  void diceChange() {
    setState(() {
      int selection = Random().nextInt(6) + 1;
      one = 'assets/img/dice$selection.png';
      selection = Random().nextInt(6) + 1;
      two = 'assets/img/dice$selection.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 70,
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(one),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(two),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        TextButton(
            onPressed: diceChange,
            child: const Text(
              "Rodar Dado",
              style: TextStyle(color: Colors.black, fontSize: 30),
            ))
      ],
    );
  }
}
