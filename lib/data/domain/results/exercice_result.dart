import 'package:fastlanetest/data/domain/exercice_steps.dart';

import 'dart:convert';

ExerciceResult exerciceResultFromJson(String str) => ExerciceResult.fromJson(json.decode(str));

class ExerciceResult {
  ExerciceResult({
    required this.steps,
  });

  List<ExerciceSteps> steps;

  factory ExerciceResult.fromJson(Map<String, dynamic> json) {
    if (json["components"] != null) {
      return ExerciceResult(
        steps: List<ExerciceSteps>.from(json["components"].map((x) => ExerciceSteps.fromJson(x))),
      );
    } else {
      return ExerciceResult(
        steps: [],
      );
    }
  }
}
