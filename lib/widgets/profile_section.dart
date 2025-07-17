import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Profile Header
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Lucas Doddema',
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 36,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Student Software Engineering',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: const Color(0xFFd1d5db),
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Attention to detail, every time.',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: const Color(0xFFd1d5db),
                  fontFamily: 'monospace',
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          
          // Social Links
          Row(
            children: [
              _buildSocialIcon(
                onTap: () => _launchUrl('https://github.com/EENprofiel'),
                icon: _buildGitHubIcon(),
              ),
              const SizedBox(width: 12),
              _buildSocialIcon(
                onTap: () => _launchUrl('https://www.linkedin.com/in/lucas-doddema'),
                icon: _buildLinkedInIcon(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSocialIcon({required VoidCallback onTap, required Widget icon}) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: AnimatedScale(
          scale: 1.0,
          duration: const Duration(milliseconds: 200),
          child: icon,
        ),
      ),
    );
  }

  Widget _buildGitHubIcon() {
    return SizedBox(
      width: 24,
      height: 24,
      child: Icon(
        Icons.code,
        color: const Color(0xFF94a3b8),
        size: 24,
      ),
    );
  }

  Widget _buildLinkedInIcon() {
    return SizedBox(
      width: 24,
      height: 24,
      child: Icon(
        Icons.business,
        color: const Color(0xFF94a3b8),
        size: 24,
      ),
    );
  }

  void _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }
}