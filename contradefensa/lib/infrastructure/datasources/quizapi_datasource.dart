import 'package:dio/dio.dart';
import 'package:contradefensa/domain/datasources/questions_datasource.dart';
import 'package:contradefensa/config/constants/environment.dart';
import 'package:contradefensa/domain/entities/question.dart';
import 'package:contradefensa/infrastructure/models/quizapi/question_quizapi.dart';
import 'package:contradefensa/infrastructure/mappers/question_mapper.dart';

class QuizapiDatasource extends QuestionsDatasource {
  final dio = Dio(
    BaseOptions(baseUrl: 'https://quizapi.io/api/v1', queryParameters: {
      'apiKey': Environment.quizApiKey,
      'limit': 10,
      'category': 'linux'
    }),
  );

  @override
  Future<List<Question>> getQuestions({int questionsNumber = 5}) async {
    final response = await dio.get('/questions');
    final List quizapiResponse = response.data;

    final List<Question> questions = quizapiResponse
        .map((e) => QuestionQuizapi.fromJson(e))
        .map((quizapi) => QuestionMapper.questionToEntity(quizapi))
        .toList();

    return questions;
  }
}
