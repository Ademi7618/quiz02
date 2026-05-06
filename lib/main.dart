import 'package:flutter/material.dart';
import 'package:quiz02/page/cortina_login_page.dart';

void main() {
  runApp(const CortinaApp());
}

class CortinaApp extends StatelessWidget {
  const CortinaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cortina Movies',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color(0xFFE53935),
        scaffoldBackgroundColor: const Color(0xFF11131A),
        textTheme: Theme.of(
          context,
        ).textTheme.apply(bodyColor: Colors.white, displayColor: Colors.white),
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: Color(0xFF20242F),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide.none,
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
          hintStyle: TextStyle(color: Color(0xFF9AA1B4)),
        ),
      ),
      home: const CortinaLoginPage(),
    );
  }
}
