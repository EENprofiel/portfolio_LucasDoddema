import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'screens/portfolio_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lucas Doddema\'s Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1f2937),
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
        fontFamily: 'Inter',
      ),
      builder: (context, child) => ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, child!),
        maxWidth: 1200,
        minWidth: 350,
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.resize(350, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(600, name: TABLET),
          const ResponsiveBreakpoint.resize(800, name: DESKTOP),
          const ResponsiveBreakpoint.autoScale(1700, name: 'XL'),
        ],
      ),
      home: const PortfolioScreen(),
    );
  }
}