import 'package:contradefensa/domain/entities/quiz.dart';

abstract class QuizRepository {
  Future<List<Quiz>> getQuizzes({int howMany = 5});
}
