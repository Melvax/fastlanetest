import 'package:fastlanetest/data/domain/exercice_steps.dart';
import 'package:fastlanetest/data/repos/remote/remote_exercice_repo.dart';

class ExerciceUseCase {
  final RemoteExerciceRepo _exerciceRepo;

  ExerciceUseCase(this._exerciceRepo);

  Future<List<Component>> init() async {
    return await _exerciceRepo.init();
  }
}
