import 'package:flutter/material.dart';
import '../models/project.dart';
import '../widgets/project_card.dart';

class ProjectsScreen extends StatelessWidget {
  final List<Project> projects = [
    Project(
      title: 'Profile Project',
      description: "This Profile Project is a beautifully designed mobile application created using Flutter. It showcases the developer's personal information, including a bio, portfolio, skills, and projects. The app features a modern dark theme, interactive UI components, and smooth navigation. It's a perfect example of how Flutter can be used to build elegant, responsive apps quickly.",
      githubLink: "github.com/inoublimohamedanouer/profile",
    ),
    Project(
      title: 'ToDo Project',
      description: "The ToDo Project is a productivity-boosting application built using Flutter. It allows users to create, manage, and track their tasks with ease. The app features a user-friendly interface, dark theme, and various organizational tools such as categorization, priority setting, and reminders. This project demonstrates the power of Flutter in creating practical, efficient utility apps.",
      githubLink: "github.com/inoublimohamedanouer/todoApp",
    ),
    Project(
      title: 'Weather App',
      description: "This Weather App is a comprehensive weather forecasting application with a robust backend built using Flask and Selenium, and a sleek frontend developed with Flutter. The app fetches real-time weather data, processes it using web scraping techniques with Selenium, and displays it in an intuitive and visually appealing manner. Users can get detailed weather forecasts, alerts, and updates for their chosen locations. This project highlights the integration of multiple technologies to create a seamless and dynamic user experience.",
      githubLink: "github.com/inoublimohamedanouer/weatherApp",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Projects')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: projects.map((project) => ProjectCard(project: project)).toList(),
        ),
      ),
    );
  }
}
