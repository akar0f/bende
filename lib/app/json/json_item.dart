class JsonItems {
  JsonItems._();

  static final String largeJsonPath = 'lesson_history.json'.path;
}

extension on String {
  String get path {
    return 'assets/$this';
  }
}
