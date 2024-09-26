import 'package:flutter/material.dart';
import 'home_page.dart';

  void main(){
    runApp(CalculateAverageApp());
  }

class CalculateAverageApp extends StatelessWidget {
  const CalculateAverageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculate Average',
      theme: ThemeData(useMaterial3: true),
      home: const HomePage(title: 'Calculate Average'),
    );
  }
}