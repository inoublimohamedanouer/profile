import 'package:flutter/material.dart';
import '../models/profile.dart';
import '../widgets/profile_card.dart';

class ProfileScreen extends StatelessWidget {
  final Profile profile = Profile(
    name: 'Mohamed Anouer Inoubli',
    bio: 'An enthusiastic Flutter developer',
    avatarUrl: 'assets/images/face.jpg',
    email: "inoublimohamedanouer123@gmail.com",
    phoneNumber: "+216 58 100 621",
    github: "github.com/inoublimohamedanouer",
  );

  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ProfileCard(profile: profile),
        ),
      ),
    );
  }
}
