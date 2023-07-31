import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Login(),
      ),
    ),
  );
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromRGBO(83, 1, 152, 1),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 300,
            ),
            const SizedBox(height: 60),
            const Text(
              'Quiz demo text',
              style: TextStyle(
                  fontSize: 30, color: Color.fromRGBO(255, 255, 255, .6)),
            ),
            const SizedBox(height: 60),
            FilledButton(onPressed: () {}, child: const Text('Start Quiz')),
          ],
        ),
      ),
    );
  }
}
