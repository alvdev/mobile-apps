import 'package:contradefensa/infrastructure/datasources/quizapi_datasource.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:contradefensa/infrastructure/repositories/question_repository_impl.dart';

final questionRepositoryProvider = Provider((ref) {
  return QuestionRepositoryImpl(QuizapiDatasource());
});
