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
              _SocialIcon(
                onTap: () => _launchUrl('https://github.com/EENprofiel'),
                icon: Icons.code,
              ),
              const SizedBox(width: 12),
              _SocialIcon(
                onTap: () => _launchUrl('https://www.linkedin.com/in/lucas-doddema'),
                icon: Icons.business,
              ),
            ],
          ),
        ],
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

class _SocialIcon extends StatefulWidget {
  final VoidCallback onTap;
  final IconData icon;

  const _SocialIcon({
    required this.onTap,
    required this.icon,
  });

  @override
  State<_SocialIcon> createState() => _SocialIconState();
}

class _SocialIconState extends State<_SocialIcon> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          transform: Matrix4.identity()
            ..translate(0.0, _isHovered ? -2.0 : 0.0)
            ..scale(_isHovered ? 1.1 : 1.0),
          child: Container(
            width: 24,
            height: 24,
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: _isHovered 
                  ? const Color(0xFFe2e8f0) 
                  : const Color(0xFF94a3b8),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Icon(
              widget.icon,
              color: _isHovered ? const Color(0xFF1f2937) : Colors.white,
              size: 16,
            ),
          ),
        ),
      ),
    );
  }
}