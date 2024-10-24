import 'package:flutter/material.dart';
import 'package:freegames/data/datasources/games_remote_datasource.dart';
import 'package:freegames/env/env_testing.dart';
import 'package:freegames/env/env.dart';

class HomePage extends StatelessWidget {
  final games = GamesRemoteDatasource();

  HomePage({super.key, names});

  @override
  Widget build(BuildContext context) {
    final List<String> names = ['paco', 'peco', 'pico', 'pato'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Appbar title'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Body text'),
            const Text('<<< SEPARATOR 1 >>>'),
            const SizedBox(
              height: 40,
            ),
            Text(games.getGames().toString()),
            const SizedBox(
              height: 40,
            ),
            const Text('<<< SEPARATOR 2 >>>'),
            const Text(name),
            Text(Env.freegamesApiKey),
            Text(Testeo.freegamesApiKey),
            ListView.builder(
              itemCount: names.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(names[index]),
                );
              },
            ),
            FutureBuilder(
              future: games.getGames(),
              builder: (context, games) {
                if (games.hasData) {
                  return ListView.builder(
                    itemCount: names.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(names[index]),
                      );
                    },
                  );
                }

                return const CircularProgressIndicator();
              },
            )
          ],
        ),
      ),
    );
  }
}
