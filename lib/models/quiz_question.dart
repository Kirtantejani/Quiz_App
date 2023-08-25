class QuizQuestion {
  const QuizQuestion(this.text, this.answers);
  final String text;
  final List<String> answers;

  //shuffle return void
  //shuffled manipulate the original list not copy it
  List<String> getShuffledAnswers() {
    //shuffle not reassign value but change element and we here create copy list by using of
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
