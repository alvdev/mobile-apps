import 'package:contradefensa/domain/entities/quiz.dart';

abstract class QuizDatasource {
  Future<List<Quiz>> getQuizzes({int howMany = 5});
}
