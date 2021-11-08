import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Text('The app bar title'),
          backgroundColor: Colors.blue,
        ),
        body: const Center(
          child: Image(
            image: AssetImage('images/mockup.png'),
          ),
        ),
      ),
    ),
  );
}
