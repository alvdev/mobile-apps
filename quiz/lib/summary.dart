import 'package:flutter/material.dart';

class Summary extends StatelessWidget {
  const Summary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData
          .map((data) => Row(
                children: [
                  Text(((data['question'] as int) + 1).toString()),
                ],
              ))
          .toList(),
    );
  }
}
