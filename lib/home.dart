import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key}); // constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is my First App"),
        backgroundColor: Colors.grey,
        centerTitle: true,
      ),
      body: Container(
        color: const Color.fromARGB(255, 140, 177, 98),
        height: 100,
        width: 300,
        margin: EdgeInsets.all(50),
        padding: EdgeInsets.all(20),
        child: Text("Hello people", style: TextStyle(
          color: const Color.fromARGB(255, 43, 42, 39),
          fontSize: 40,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold),
          )
        ),
    );
  }
}
