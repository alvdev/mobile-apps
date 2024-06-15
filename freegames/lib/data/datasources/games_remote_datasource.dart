import 'dart:convert';

import 'package:dio/dio.dart';

class GamesRemoteDatasource {
  final dio = Dio();

  getGames() async {
    final Response response = await Dio().get(
      'https://www.freetogame.com/api/games/',
      queryParameters: {
        'platform': 'pc',
      },
    );

    return jsonEncode(response.data[0]['thumbnail']).replaceAll('"', '');
  }

  getGamesString() {
    return getGames();
  }
}
