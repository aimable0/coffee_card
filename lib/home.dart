import 'package:coffee_card/coffee_prefs.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key}); // constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Coffe Id",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.brown[800],
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.brown[200],
            child: Text('How I like my coffee...'),
          ),
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.brown[100],
            child: CoffeePrefs(),
          ),
          Expanded(
            child: Image.asset("assets/img/coffee_bg.jpg", fit: BoxFit.fitWidth, alignment: Alignment.bottomCenter,),
          ), // this makes it like a flex item.
        ],
      ),
    );
  }
}
