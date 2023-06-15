import 'package:fastlanetest/data/domain/exercice_steps.dart';

abstract class RemoteExerciceRepo {
  Future<List<Component>> init();
}
