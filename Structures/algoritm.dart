import 'dart:io';

import '../Languages/en-US.dart';
import '../Languages/ru_Ru.dart';
import '../Questions/questions.dart';

class HeightAlgoritm {
  void AlgoritmMale(int HeightMom, int HeightDad) {
    int Result = 0;
    Height() => (HeightDad + HeightMom).round();
    for (var i = 0; i < 101; i++) {}
    Result = (Height() / 1.85).round();
    stdout.write("$Result");
    stdout.writeln(languagename.toLowerCase().contains("р") ||
            languagename.toLowerCase().contains("1")
        ? ru_Ru().Answers[5]
        : en_US().Answers[5]);
  }

  void AlgoritmFemale(int HeightMom, int HeightDad) {
    int Result = 0;
    Height() => (HeightDad + HeightMom).round();
    for (var i = 0; i < 101; i++) {}
    Result = (Height() / 1.99).round();
    stdout.write("$Result");
    stdout.writeln(languagename.toLowerCase().contains("р") ||
            languagename.toLowerCase().contains("1")
        ? ru_Ru().Answers[5]
        : en_US().Answers[5]);
  }
}
