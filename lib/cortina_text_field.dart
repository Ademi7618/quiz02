import 'package:flutter/material.dart';

class CortinaTextField extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool obscureText;

  const CortinaTextField({
    super.key,
    required this.icon,
    required this.label,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: const Color(0xFF9AA1B4)),
        hintText: label,
      ),
    );
  }
}