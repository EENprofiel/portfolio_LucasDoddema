import 'package:flutter/material.dart';
import '../widgets/about_section.dart';
import '../widgets/experience_section.dart';
import '../widgets/skills_section.dart';

class MainContent extends StatelessWidget {
  const MainContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AboutSection(),
          SizedBox(height: 32),
          ExperienceSection(),
          SizedBox(height: 32),
          SkillsSection(),
        ],
      ),
    );
  }
}