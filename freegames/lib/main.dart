import 'package:flutter/material.dart';
import 'package:freegames/data/datasources/games_remote_datasource.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final gamesData = GamesRemoteDatasource();

    return MaterialApp(
      title: 'Free Games',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('This is the appbar'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FutureBuilder(
                future: gamesData.getGames(),
                builder: (context, games) {
                  if (games.hasData) {
                    return Column(
                      children: [
                        Image(
                          image: NetworkImage(games.data.toString()),
                        ),
                        Text(games.data.toString()),
                        const Image(
                          image: NetworkImage(
                              'https://www.freetogame.com/g/541/thumbnail.jpg'),
                        ),
                      ],
                    );
                  }
                  return const CircularProgressIndicator();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
