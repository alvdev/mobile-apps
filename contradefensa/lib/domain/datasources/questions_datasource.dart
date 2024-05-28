import 'package:contradefensa/domain/entities/question.dart';

abstract class QuestionsDatasource {
  Future<List<Question>> getQuestions({int questionsNumber = 5});
}
