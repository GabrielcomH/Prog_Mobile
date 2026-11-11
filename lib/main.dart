import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const TourismApp());
}

class TourismApp extends StatelessWidget {
  const TourismApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App de Turismo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.grey[100],
      ),
      home: const HomeScreen(),
    );
  }
}