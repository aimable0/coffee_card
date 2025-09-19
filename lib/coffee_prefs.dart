import 'package:coffee_card/styled_button.dart';
import 'package:coffee_card/styled_text.dart';
import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int sugars = 1;
  int strength = 1;

  // button functions
  void increaseSugars() {
    setState(() {
      sugars = (sugars + 1 > 5) ? 0 : ++sugars;
    });
  }

  void increaseStrength() {
    setState(() {
      strength = (strength + 1 > 5) ? 1 : ++strength;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            StyledText('Strength: '),

            for (int i = 0; i < strength; i++)
              Image.asset(
                "assets/img/coffee_bean.png",
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),

            Expanded(child: SizedBox()),
            StyledButton(
              onPressed: increaseStrength,
              child: Text('+'),
            ),
          ],
        ),
        Row(
          children: [
            StyledText('Sugars: '),
            if (sugars == 0)
              Text('No sugars...'),

            for (int i = 0; i < sugars; i++)
              Image.asset(
                'assets/img/sugar_cube.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            Expanded(child: SizedBox()),
            StyledButton(
              onPressed: increaseSugars,
              child: Text("+"),
            ),
          ],
        ),
      ],
    );
  }
}
