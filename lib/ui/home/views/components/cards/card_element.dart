import 'package:flutter/material.dart';

class CardElement extends StatelessWidget {
  const CardElement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: const Text('Hola Mundo!'),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFF8D8CB),
              Color(0xFF8CAACD),
            ]),
        borderRadius: BorderRadius.circular(25),
        boxShadow: const [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 10,
            offset: Offset(0, 1),
          ),
        ],
      ),
    );
  }
}
