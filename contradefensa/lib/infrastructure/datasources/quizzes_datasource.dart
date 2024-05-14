import 'package:contradefensa/config/constants/environment.dart';
import 'package:contradefensa/domain/entities/quiz.dart';
import 'package:dio/dio.dart';

abstract class QuizzesDatasource {
  final dio = Dio(
    BaseOptions(baseUrl: 'https://quizapi.io/api/v1', queryParameters: {
      'apiKey': Environment.quizApiKey,
      'limit': 10,
      'category': 'linux'
    }),
  );

  Future<List<Quiz>> getQuizzes({int howMany = 5}) async {
    final response = await dio.get('/questions');
    final List<Quiz> questions = [];

    return questions;
  }
}
