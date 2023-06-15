import 'package:fastlanetest/app/components/text_components.dart';
import 'package:fastlanetest/controllers/exercice_controller.dart';
import 'package:fastlanetest/data/providers/state_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExerciceScreen extends ConsumerStatefulWidget {
  const ExerciceScreen({super.key});

  @override
  ConsumerState<ExerciceScreen> createState() => _ExerciceScreenState();
}

class _ExerciceScreenState extends ConsumerState<ExerciceScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        await ref.read(exerciceController.notifier).fetchInitialExercice();
      },
    );
  }

  //TODO:trouver le bon encodage utf8 pour le texte
  @override
  Widget build(BuildContext context) {
    ExerciceState exerciceState = ref.watch(exerciceController);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...exerciceState.exerciceSteps.map(
                (component) {
                  if (component.type == "title") {
                    return ExerciceTitle(component.content);
                  } else {
                    return ExeciceText(component.content);
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
