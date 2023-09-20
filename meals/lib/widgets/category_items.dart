import 'package:flutter/material.dart';

class CategoryItems extends StatelessWidget {
  const CategoryItems({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      padding: const EdgeInsets.all(20),
      mainAxisSpacing: 20,
      crossAxisSpacing: 20,
      children: [
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          color: Colors.teal[900],
          child: const Text('1'),
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          color: Colors.red[900],
          child: const Text('2'),
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          color: Colors.yellow[900],
          child: const Text('3'),
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          color: Colors.purple[900],
          child: const Text('4'),
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          color: Colors.indigo[900],
          child: const Text('5'),
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          color: Colors.lime[900],
          child: const Text('6'),
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          color: Colors.green[900],
          child: const Text('7'),
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          color: Colors.blue[900],
          child: const Text('8'),
        )
      ],
    );
  }
}
