import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Skills',
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        const SizedBox(height: 16),
        ResponsiveRowColumn(
          layout: ResponsiveWrapper.of(context).isSmallerThan(TABLET)
              ? ResponsiveRowColumnType.COLUMN
              : ResponsiveRowColumnType.ROW,
          rowSpacing: 16,
          columnSpacing: 16,
          children: [
            ResponsiveRowColumnItem(
              rowFlex: 1,
              child: _buildSkillCategory(
                'Programming Languages',
                [
                  'C#',
                  'Java',
                  'PHP',
                  'Python',
                  'SQL',
                  'JavaScript',
                ],
              ),
            ),
            ResponsiveRowColumnItem(
              rowFlex: 1,
              child: _buildSkillCategory(
                'Frameworks & Libraries',
                [
                  '.NET',
                  'Blazor',
                  'Mudblazor',
                  'Laravel',
                  'Tailwind CSS',
                  'Node.js',
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSkillCategory(String title, List<String> skills) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 8),
        ...skills.map((skill) => Padding(
          padding: const EdgeInsets.only(bottom: 4),
          child: Row(
            children: [
              Container(
                width: 4,
                height: 4,
                decoration: const BoxDecoration(
                  color: Color(0xFFd1d5db),
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                skill,
                style: const TextStyle(
                  color: Color(0xFFd1d5db),
                  fontSize: 14,
                ),
              ),
            ],
          ),
        )).toList(),
      ],
    );
  }
}