import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../widgets/profile_section.dart';
import '../widgets/main_content.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF1f2937), // gray-900
              Color(0xFF0f172a), // slate-900
              Color(0xFF000000), // black
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 1200),
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.symmetric(vertical: 64),
            child: ResponsiveRowColumn(
              layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                  ? ResponsiveRowColumnType.COLUMN
                  : ResponsiveRowColumnType.ROW,
              rowSpacing: 32,
              columnSpacing: 32,
              rowMainAxisAlignment: MainAxisAlignment.start,
              rowCrossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                ResponsiveRowColumnItem(
                  rowFlex: 1,
                  child: ProfileSection(),
                ),
                ResponsiveRowColumnItem(
                  rowFlex: 1,
                  child: MainContent(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}