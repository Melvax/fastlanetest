import 'package:fastlanetest/data/repos/remote/remote_exercice_repo.dart';
import 'package:fastlanetest/data/repos/remote/remote_exercice_repo_impl.dart';
import 'package:fastlanetest/data/services/exercice_services.dart';
import 'package:fastlanetest/data/usecases/exercice_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Provider<ExerciceServices> exerciceServicesProvider = Provider<ExerciceServices>((ref) => ExerciceServices());

Provider<ExerciceUseCase> exerciceUseCase = Provider<ExerciceUseCase>((ref) {
  return ExerciceUseCase(ref.read(exerciceRepoProvider));
});

Provider<RemoteExerciceRepo> exerciceRepoProvider = Provider<RemoteExerciceRepo>((ref) {
  ExerciceServices exerciceServices = ref.read(exerciceServicesProvider);
  return RemoteExerciceRepoImpl(exerciceServices);
});
