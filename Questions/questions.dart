import 'dart:convert';
import 'dart:io';

import '../Genders/female.dart';
import '../Genders/male.dart';
import '../Languages/en-US.dart';
import '../Languages/ru_Ru.dart';

List languages = ["1: Русский.", "2: English."];
String languagename = '';

class Questions {
  void questions() {
    stdout.writeln(
        "WARNING!\nWrite answers without spaces and various other characters, write as indicated in the examples, just choose your answer!");
    stdout.write(
        "Active languages:\n- Русский\n- English\nFor example: English or 2\n");
    stdout.write("Choose language: ");
    var language = stdin.readLineSync(encoding: utf8) ?? 'Error';
    languagename = language;
    if (language.toLowerCase().contains("р") ||
        language.toLowerCase().contains("1")) {
      stdout.writeln(ru_Ru().Answers[0]);
      stdout.write(ru_Ru().Answers[1]);
      var gender = stdin.readLineSync(encoding: utf8) ?? 'Error';
      if (gender.toLowerCase().startsWith("женщ") ||
          gender.toLowerCase().startsWith("дев")) {
        female().femaleQuestions();
      } else {
        male().maleQuestions();
      }
    } else {
      stdout.writeln(en_US().Answers[0]);
      stdout.write(en_US().Answers[1]);
      var gender = stdin.readLineSync() ?? 'Error';
      switch (gender.toLowerCase().contains("femal") ||
          gender.toLowerCase().contains("wom")) {
        case true:
          female().femaleQuestions();
        case false:
          male().maleQuestions();
      }
    }
  }
}
