import 'package:contradefensa/config/constants/environment.dart';
import 'package:contradefensa/domain/entities/question.dart';
import 'package:dio/dio.dart';

abstract class QuestionsDatasource {
  final dio = Dio(
    BaseOptions(baseUrl: 'https://quizapi.io/api/v1', queryParameters: {
      'apiKey': Environment.quizApiKey,
      'limit': 10,
      'category': 'linux'
    }),
  );

  Future<List<Question>> getQuestions({int howMany = 5}) async {
    final response = await dio.get('/questions');
    final List<Question> questions = [];

    return questions;
  }
}
