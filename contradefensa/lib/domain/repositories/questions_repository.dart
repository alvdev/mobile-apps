import 'package:contradefensa/domain/entities/question.dart';

abstract class QuestionsRepository {
  Future<List<Question>> getQuestions({int questionsNumber = 5});
}
