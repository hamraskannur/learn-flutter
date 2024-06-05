import 'package:flutter/material.dart';
import 'package:firstapp/gradient_container.dart';

void main() {
  runApp(const MaterialApp(
      home: Scaffold(
          body: GradientContainer(Color.fromARGB(255, 33, 5, 109),
              Color.fromARGB(246, 68, 21, 149)))));
}
