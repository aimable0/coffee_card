import 'package:flutter/material.dart';

class StyledButton extends StatelessWidget {
  // constructor
  const StyledButton({required this.onPressed, required this.child, super.key});

  final Widget child;
  final void Function() onPressed;

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
