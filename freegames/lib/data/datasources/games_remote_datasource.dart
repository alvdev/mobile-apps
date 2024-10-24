import 'package:dio/dio.dart';
import 'package:freegames/data/models/game_model.dart';

class GamesRemoteDatasource {
  Future<GameModel> getGames() async {
    final Response response = await Dio().get(
      'https://www.freetogame.com/api/games',
      queryParameters: {
        'platform': 'pc',
        'category': 'shooter',
        /* 'apiKey': 'sVJcSNAqTnMQLTP5V3EHzfZFbdQCJLuVkD33VSXo',
          'limit': 10,
          'category': 'linux' */
      },
    );

    // return jsonEncode(response.data[0]['thumbnail']).replaceAll('"', '');
    if (response.statusCode == 200) {
      final GameModel games = GameModel.fromJson(json: response.data);
      return games;
    } else {
      throw Exception();
    }
  }
}
