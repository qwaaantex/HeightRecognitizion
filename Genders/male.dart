import 'dart:async';
import 'dart:io';

import '../Languages/en-US.dart';
import '../Languages/ru_Ru.dart';
import '../Questions/questions.dart';
import '../Structures/algoritm.dart';

class male {
  void maleQuestions() {
    if (languagename.toLowerCase().contains("р") ||
        languagename.toLowerCase().contains("1")) {
      stdout.write(ru_Ru().Answers[2]);
      var momheight = stdin.readLineSync() ?? 'Ошибка';
      stdout.write(ru_Ru().Answers[3]);
      var dadheight = stdin.readLineSync() ?? 'Ошибка';
      if (int.tryParse(momheight) != null && int.tryParse(dadheight) != null) {
        int HeightMom = int.parse(momheight);
        int HeightDad = int.parse(dadheight);
        stdout.write("${ru_Ru().Answers[4]}");
        HeightAlgoritm().AlgoritmMale(HeightMom, HeightDad);

        stdout.writeln(ru_Ru().HelpCloseWindow[0]);
        Timer(Duration(seconds: 10), () => exit(0));
      } else {
        stdout.writeln(ru_Ru().Errors[0]);
        stdout.writeln(ru_Ru().HelpCloseWindow[0]);
        Timer(Duration(seconds: 10), () => exit(0));
      }
    } else {
      stdout.write(en_US().Answers[2]);
      var momheight = stdin.readLineSync() ?? 'Error';
      stdout.write(en_US().Answers[3]);
      var dadheight = stdin.readLineSync() ?? 'Error';
      if (int.tryParse(momheight) != null && int.tryParse(dadheight) != null) {
        int HeightMom = int.parse(momheight);
        int HeightDad = int.parse(dadheight);
        stdout.write("${en_US().Answers[4]}");
        HeightAlgoritm().AlgoritmMale(HeightMom, HeightDad);

        stdout.writeln(en_US().HelpCloseWindow[0]);
        Timer(Duration(seconds: 10), () => exit(0));
      } else {
        stdout.writeln(en_US().Errors[0]);
        stdout.writeln(en_US().HelpCloseWindow[0]);
        Timer(Duration(seconds: 10), () => exit(0));
      }
    }
  }
}
