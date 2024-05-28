import 'package:contradefensa/presentation/providers/questions/questions_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home-screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _HomeView(),
    );
  }
}

class _HomeView extends ConsumerStatefulWidget {
  const _HomeView();

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<_HomeView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ref.read(questionsNumberProvider.notifier).loadNextQuestions();
  }

  @override
  Widget build(BuildContext context) {
    final questions = ref.watch(questionsNumberProvider);
    return ListView.builder(
      itemCount: questions.length,
      itemBuilder: (context, index) {
        final question = questions[index];
        return ListTile(title: Text(question.question));
      },
    );
  }
}
