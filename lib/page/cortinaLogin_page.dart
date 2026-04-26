import 'package:flutter/material.dart';
import 'package:quiz02/cortina_text_field.dart';
import 'package:quiz02/outlined_action_button.dart';
import 'package:quiz02/page/cortina_primary_button.dart';
import 'package:quiz02/social_signIn_button.dart';

class CortinaLoginPage extends StatelessWidget {
  const CortinaLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment.topCenter,
                  radius: 1.3,
                  colors: [Color(0x33FFFFFF), Colors.transparent],
                  stops: [0.0, 0.65],
                ),
              ),
            ),
          ),
          SafeArea(
            child: Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 28,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 40),
                    const Text(
                      'Log In',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.2,
                      ),
                    ),
                    const SizedBox(height: 42),
                    const CortinaTextField(
                      icon: Icons.person_outline,
                      label: 'Username',
                    ),
                    const SizedBox(height: 20),
                    const CortinaTextField(
                      icon: Icons.lock_outline,
                      label: 'Password',
                      obscureText: true,
                    ),
                    const SizedBox(height: 4),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          foregroundColor: const Color(0xFF9AA1B4),
                          textStyle: const TextStyle(fontSize: 14),
                        ),
                        child: const Text('Forgot password?'),
                      ),
                    ),
                    const SizedBox(height: 22),
                    CortinaPrimaryButton(label: 'LOGIN', onPressed: () {}),
                    const SizedBox(height: 16),
                    SocialSignInButton(
                      label: 'SIGN IN WITH GOOGLE',
                      icon: Icons.g_mobiledata,
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black87,
                      onPressed: () {},
                    ),
                    const SizedBox(height: 12),
                    SocialSignInButton(
                      label: 'SIGN IN WITH FACEBOOK',
                      icon: Icons.facebook,
                      backgroundColor: Color(0xFF4267B2),
                      foregroundColor: Colors.white,
                      onPressed: () {},
                    ),
                    const SizedBox(height: 22),
                    OutlinedActionButton(
                      label: 'REGISTRATION',
                      onPressed: () {},
                    ),
                    const SizedBox(height: 36),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
