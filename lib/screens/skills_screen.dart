import 'package:flutter/material.dart';
import '../models/skill.dart';
import '../widgets/skill_card.dart';

class SkillsScreen extends StatelessWidget {
  final List<Skill> skills = [
    Skill(name: 'Flutter', imageUrl: 'assets/images/flutter.png'),
    Skill(name: 'Dart', imageUrl: 'assets/images/dart.png'),
    Skill(name: 'Angular', imageUrl: 'assets/images/angular.png'),
    Skill(name: 'Python', imageUrl: 'assets/images/python.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Skills')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: skills.map((skill) => SkillCard(skill: skill)).toList(),
        ),
      ),
    );
  }
}
