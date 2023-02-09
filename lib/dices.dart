import 'package:flutter/material.dart';

class MyDices extends StatelessWidget {
  const MyDices({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset('assets/img/dice1.png'),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset('assets/img/dice2.png'),
          ),
        )
      ],
    );
  }
}
