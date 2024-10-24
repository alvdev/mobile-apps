import 'package:freegames/domain/entities/game_entity.dart';

class GameModel extends GameEntity {
  const GameModel({
    required super.id,
/*     required super.title,
    required super.thumbnail,
    required super.description,
    required super.url,
    required super.gameUrl,
    required super.genre,
    required super.platform,
    required super.publisher,
    required super.developer,
    required super.releaseDate, */
  });

  factory GameModel.fromJson({required Map<String, dynamic> json}) {
    return GameModel(
      id: json['id'],
/*       title: json['title'],
      thumbnail: json['thumbnail'],
      description: json['description'],
      url: json['freetogame_profile_url'],
      gameUrl: json['game_url'],
      genre: json['genre'],
      platform: json['platform'],
      publisher: json['publisher'],
      developer: json['developer'],
      releaseDate: json['release_date'], */
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
/*       'title': title,
      'thumbnail': thumbnail,
      'description': description,
      'url': url,
      'gameUrl': gameUrl,
      'genre': genre,
      'platform': platform,
      'publisher': publisher,
      'developer': developer,
      'releaseDate': releaseDate, */
    };
  }
}
