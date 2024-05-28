import 'package:contradefensa/domain/datasources/questions_datasource.dart';
import 'package:contradefensa/domain/entities/question.dart';
import 'package:contradefensa/domain/repositories/questions_repository.dart';

class QuestionRepositoryImpl extends QuestionsRepository {
  final QuestionsDatasource datasource;

  QuestionRepositoryImpl(this.datasource);

  @override
  Future<List<Question>> getQuestions({int questionsNumber = 10}) {
    return datasource.getQuestions(questionsNumber: questionsNumber);
  }
}
