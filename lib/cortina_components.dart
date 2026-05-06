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

class CortinaPrimaryButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const CortinaPrimaryButton({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFE53935),
        padding: const EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      child: Text(
        label,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
      ),
    );
  }
}
