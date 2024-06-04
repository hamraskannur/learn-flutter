import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Scaffold(body: GradientContainer())));
}

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Colors.deepPurple,
        Color.fromARGB(246, 133, 130, 138),
      ], begin: Alignment.bottomLeft, end: Alignment.bottomRight)),
      child: const Center(
          child: Text(
        'Hello world!',
        style: TextStyle(
          color: Colors.white,
          fontSize: 28,
        ),
      )),
    );
  }
}
