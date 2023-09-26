import 'package:flutter/material.dart';

class HerBubbleMessage extends StatelessWidget {
  const HerBubbleMessage({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FractionallySizedBox(
          widthFactor: 0.75,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: color.secondary.withOpacity(0.3),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text('Her message'),
          ),
        ),
        FractionallySizedBox(
          widthFactor: 0.75,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                'https://yesno.wtf/assets/yes/8-2f93962e2ab24427df8589131da01a4d.gif',
                fit: BoxFit.cover,
                width: 50,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;

                  return const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Text('Sending message...'),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
