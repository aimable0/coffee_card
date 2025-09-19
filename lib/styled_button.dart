import 'package:flutter/material.dart';

class StyledButton extends StatelessWidget {
  // constructor
  StyledButton({required this.onPressed, required this.child, super.key});

  Text child;
  void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.brown,
        foregroundColor: Colors.brown[50],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.all(Radius.circular(5)),
        ),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
