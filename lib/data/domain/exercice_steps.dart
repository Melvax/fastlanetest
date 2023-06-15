// To parse this JSON data, do
//
//     final exerciceSteps = exerciceStepsFromJson(jsonString);

import 'dart:convert';

ExerciceSteps exerciceStepsFromJson(String str) => ExerciceSteps.fromJson(json.decode(str));

String exerciceStepsToJson(ExerciceSteps data) => json.encode(data.toJson());

class ExerciceSteps {
  String screenId;
  int order;
  List<Component> components;

  ExerciceSteps({
    required this.screenId,
    required this.order,
    required this.components,
  });

  factory ExerciceSteps.fromJson(Map<String, dynamic> json) => ExerciceSteps(
        screenId: json["screenId"],
        order: json["order"],
        components: List<Component>.from(json["components"].map((x) => Component.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "screenId": screenId,
        "order": order,
        "components": List<dynamic>.from(components.map((x) => x.toJson())),
      };
}

class Component {
  String type;
  String content;

  Component({
    required this.type,
    required this.content,
  });

  factory Component.fromJson(Map<String, dynamic> json) => Component(
        type: json["type"],
        content: json["content"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "content": content,
      };
}
