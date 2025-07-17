import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'About',
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          'As a Software Engineering student in the HBO-ICT bachelor at Windesheim University of Applied Sciences, I am passionate about creating innovative software solutions. My motto "Attention to detail, every time" reflects my commitment to quality and precision in every project I undertake.',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: const Color(0xFFd1d5db),
            fontSize: 14,
            height: 1.5,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'With a strong foundation in programming and an insatiable curiosity for the latest technologies, I strive to continuously improve my skills.',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: const Color(0xFFd1d5db),
            fontSize: 14,
            height: 1.5,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'Beyond my technical skills, I highly value collaboration and communication. I believe that the best software solutions emerge when diverse perspectives come together.',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: const Color(0xFFd1d5db),
            fontSize: 14,
            height: 1.5,
          ),
        ),
      ],
    );
  }
}