import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    const String userName = 'alvdev'; // TODO: hardcoded

    return SafeArea(
      child: Container(
        color: const Color.fromRGBO(142, 0, 0, 1),
        padding: const EdgeInsets.all(20),
        child: const Row(
          children: [
            Icon(Icons.menu),
            Spacer(),
            Text(userName),
            SizedBox(width: 10),
            CircleAvatar(
              backgroundColor: Colors.white30,
              foregroundImage: NetworkImage(
                  'https://icons.veryicon.com/png/o/miscellaneous/rookie-official-icon-gallery/225-default-avatar.png'),
            )
          ],
        ),
      ),
    );
  }
}
