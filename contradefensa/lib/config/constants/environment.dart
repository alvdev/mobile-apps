import "package:flutter_dotenv/flutter_dotenv.dart";

class Environment {
  static String quizApiKey = dotenv.env['QUIZAPI_KEY'] ?? 'No api key';
}
