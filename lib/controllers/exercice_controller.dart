import 'dart:async';

import 'package:fastlanetest/data/domain/exercice_steps.dart';
import 'package:fastlanetest/data/usecases/exercice_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExerciceState {
  final bool loading;
  //currentStep,
  //exerciceID

  final List<Component> exerciceSteps;

  const ExerciceState({
    required this.loading,
    required this.exerciceSteps,
  });

  ExerciceState copyWith({
    bool? loading,
    List<Component>? exerciceSteps,
  }) {
    return ExerciceState(
      loading: loading ?? this.loading,
      exerciceSteps: exerciceSteps ?? this.exerciceSteps,
    );
  }
}

class ExerciceController extends StateNotifier<ExerciceState> {
  ExerciceController(this._exerciceUseCase) : super(const ExerciceState(loading: false, exerciceSteps: []));

  final ExerciceUseCase _exerciceUseCase;

  Future<void> fetchInitialExercice() async {
    state = state.copyWith(loading: true);

    List<Component> exerciceResult = await _exerciceUseCase.init();

    state = state.copyWith(
      loading: false,
      exerciceSteps: exerciceResult,
    );
  }

  Future<void>? resetAll() {
    state = state.copyWith(
      loading: false,
      exerciceSteps: [],
    );

    return null;
  }
}
