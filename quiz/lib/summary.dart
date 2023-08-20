import 'package:flutter/material.dart';

class Summary extends StatelessWidget {
  const Summary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData
              .map((data) => Row(
                    children: [
                      SizedBox(
                        width: 50,
                        child: Text(
                          ((data['question_index'] as int) + 1).toString(),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              data['question'] as String,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: Color.fromRGBO(255, 255, 255, .7)),
                              textAlign: TextAlign.left,
                            ),
                            const SizedBox(height: 20),
                            Text(
                              data['user_answer'] as String,
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 112, 218, 245),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Text(data['correct_answer'] as String),
                            const SizedBox(height: 40),
                          ],
                        ),
                      )
                    ],
                  ))
              .toList(),
        ),
      ),
    );
  }
}
