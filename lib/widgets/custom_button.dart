import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 50, // You can adjust the height if needed
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(const Color(0xFFBA9BC9)),
        ),
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white,
            fontSize: 20
          ),
        ),
      ),
    );
  }
}
