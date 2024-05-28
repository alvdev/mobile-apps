import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:contradefensa/domain/entities/question.dart';
import 'package:contradefensa/presentation/providers/questions/questions_repository_provider.dart';

final questionsNumberProvider =
    StateNotifierProvider<QuestionsNotifier, List<Question>>((ref) {
  final fetchMoreQuestions = ref.watch(questionRepositoryProvider).getQuestions;

  return QuestionsNotifier(fetchMoreQuestions: fetchMoreQuestions);
});

typedef QuestionCallback = Future<List<Question>> Function(
    {int questionsNumber});

class QuestionsNotifier extends StateNotifier<List<Question>> {
  int currentQuestionsNumber = 0;
  final QuestionCallback fetchMoreQuestions;

  QuestionsNotifier({
    required this.fetchMoreQuestions,
  }) : super([]);

  Future<void> loadNextQuestions() async {
    currentQuestionsNumber++;
    final List<Question> questions =
        await fetchMoreQuestions(questionsNumber: currentQuestionsNumber);
    state = [...state, ...questions];
  }
}
