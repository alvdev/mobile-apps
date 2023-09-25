import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () {
              setState(() => counter = 0);
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$counter',
              style:
                  const TextStyle(fontSize: 150, fontWeight: FontWeight.w100),
            ),
            Text(
              counter == 1 ? 'click' : 'clicks',
              style: const TextStyle(fontSize: 50, fontWeight: FontWeight.w200),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomFloatingButton(
            icon: Icons.plus_one,
            onPressed: () {
              setState(() => counter++);
            },
          ),
          const SizedBox(height: 10),
          CustomFloatingButton(
            icon: Icons.exposure_minus_1,
            onPressed: () {
              setState(() {
                if (counter == 0) return;
                counter--;
              });
            },
          ),
        ],
      ),
    );
  }
}

class CustomFloatingButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomFloatingButton(
      {super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const RoundedRectangleBorder(
        side: BorderSide(color: Colors.white, width: 1),
        borderRadius: BorderRadius.all(
          Radius.circular(100),
        ),
      ),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
