import 'package:fastlanetest/controllers/exercice_controller.dart';
import 'package:fastlanetest/data/providers/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

StateNotifierProvider<ExerciceController, ExerciceState> exerciceController =
    StateNotifierProvider<ExerciceController, ExerciceState>((ref) {
  return ExerciceController(ref.read(exerciceUseCase));
});
