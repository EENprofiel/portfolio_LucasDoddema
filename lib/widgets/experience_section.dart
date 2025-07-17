import 'package:flutter/material.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Experience',
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        const SizedBox(height: 16),
        _buildExperienceCard(),
      ],
    );
  }

  Widget _buildExperienceCard() {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: const Color(0xFF1e293b).withOpacity(0.7), // slate-800/70
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Comakership Software Development',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'Dare IT BV | February-June 2024',
            style: TextStyle(
              color: const Color(0xFF94a3b8), // slate-400
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 8),
          RichText(
            text: TextSpan(
              style: TextStyle(
                color: const Color(0xFFd1d5db),
                fontSize: 14,
                height: 1.5,
              ),
              children: [
                const TextSpan(
                  text: 'As a Scrum Master, I successfully led a Software Development project during my comakership. In a team of four students, I took a leading role in communicating with the client and coordinating my team members. We developed a Blazor web app using C# .NET 7 and the Mudblazor front-end framework. My contribution included both front-end and back-end development, with more focus on back-end work.',
                ),
                const TextSpan(text: '\n\n'),
                const TextSpan(
                  text: 'I designed, developed, and implemented an API and set up the corresponding database. These experiences significantly strengthened my skills in Scrum methodology, team leadership, and full-stack development.',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}