import 'package:flutter/material.dart';
import 'package:coffee_card/home.dart';

void main() {
  runApp(const MaterialApp(home: Sandbox()));
}


class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sandbox'),
        backgroundColor: Colors.amberAccent,
        ),
      body: Column(
        children: [
          Container(
            width: 100,
            color: Colors.green,
            child: Text('Container 1'),
          ),
          Container(
            width: 200,
            color: const Color.fromARGB(255, 41, 93, 152),
            child: Text('Container 2'),
          ),
          Container(
            width: 300,
            color: const Color.fromARGB(255, 93, 17, 97),
            child: Text('Container 3'),
          ),
          Container(
            width: 400,
            color: const Color.fromARGB(255, 109, 86, 9),
            child: Text('Container 4'),
          ),
        ],
      ),
    );
  }
}