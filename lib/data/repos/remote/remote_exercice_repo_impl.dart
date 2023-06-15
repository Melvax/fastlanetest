import 'package:fastlanetest/data/domain/exercice_steps.dart';
import 'package:fastlanetest/data/repos/remote/remote_exercice_repo.dart';
import 'package:fastlanetest/data/services/exercice_services.dart';

class RemoteExerciceRepoImpl extends RemoteExerciceRepo {
  final ExerciceServices _exerciceServices;

  RemoteExerciceRepoImpl(this._exerciceServices);

  @override
  Future<List<Component>> init() async {
    List<Component> res = await _exerciceServices.init();
    return res;
  }
}
