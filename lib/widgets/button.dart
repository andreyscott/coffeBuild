import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.onPressed, required this.text});

  final String text;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(Colors.deepPurple),
          padding: WidgetStateProperty.all(
            const EdgeInsets.symmetric(vertical: 16),
          ),
        ),
        child: Text(text),
      ),
    );
  }
}
