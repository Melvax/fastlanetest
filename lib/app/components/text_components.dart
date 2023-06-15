import 'package:flutter/material.dart';

class ExeciceText extends StatelessWidget {
  const ExeciceText(
    this.text, {
    super.key,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 16),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}

class ExerciceTitle extends StatelessWidget {
  const ExerciceTitle(
    this.title, {
    super.key,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title.toUpperCase(),
      style: const TextStyle(color: Colors.red, fontFamily: "thicker", fontWeight: FontWeight.bold, fontSize: 24),
    );
  }
}
