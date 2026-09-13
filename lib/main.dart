import 'package:flutter/material.dart';
import 'screens/home/dashboard_screen.dart';

void main() {
  runApp(const GlamoraApp());
}

class GlamoraApp extends StatelessWidget {
  const GlamoraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Glamora',
      theme: ThemeData(
        fontFamily: 'Arial',
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFF8C8DC),
        ),
        useMaterial3: true,
      ),
      home: const DashboardScreen(),
    );
  }
}