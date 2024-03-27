import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  static const String name = 'settings_screen';

  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings Screen'),
      ),
      body: _settingsView(),
    );
  }

  _settingsView() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: 10,
        runSpacing: 10,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: const Text('This is a button'),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.accessible),
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Text('This is a button'),
          ),
          SegmentedButton(segments: const <ButtonSegment>[
            ButtonSegment<String>(
                label: Text('button text'),
                value: 'Option 1',
                tooltip: 'This is a tooltip'),
            ButtonSegment<String>(
                label: Text('button text'), value: 'Option 2'),
          ], selected: const {
            'Option 1'
          })
        ],
      ),
    );
  }
}
