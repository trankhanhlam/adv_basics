class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffedList() {
    final listShuffed = List.of(answers);
    listShuffed.shuffle();
    return listShuffed;
  }
}
