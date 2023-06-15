import 'dart:convert';

import 'package:fastlanetest/app/utils/constants.dart';
import 'package:fastlanetest/data/domain/exercice_steps.dart';
import 'package:http/http.dart' as http;

class ExerciceServices {
  Future<List<Component>> init() async {
    Uri uri = Uri.parse(Urls.kExerciceUrl);
    http.Response r = await http.get(uri);

    if (r.statusCode == 200) {
      final exerciceSteps = ExerciceSteps.fromJson(json.decode(r.body));
      return exerciceSteps.components;
    }
    throw Error.safeToString('init : Error loading exercice steps');
  }
}
