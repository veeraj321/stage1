// ignore: file_names

class WishClass {
  const WishClass(this.question, this.ans1);

  final String question;
  final List<String> ans1;

  List<String> getSuffelled() {
    final shuffle = List.of(ans1);
    shuffle.shuffle();
    return shuffle;
  }
}
