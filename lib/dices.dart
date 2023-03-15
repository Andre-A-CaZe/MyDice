import 'dart:math';

import 'package:flutter/material.dart';

class MyDices extends StatefulWidget {
  const MyDices({super.key});

  @override
  State<MyDices> createState() => _MyDicesState();
}

class _MyDicesState extends State<MyDices> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      dado(Random().nextInt(6) + 1),
      dado(Random().nextInt(6) + 1)
    ]);
  }

  Expanded dado(valorDado) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          setState(() {});
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Image.asset('assets/img/dice$valorDado.png'),
        ),
      ),
    );
  }
}
