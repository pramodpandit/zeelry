import 'package:flutter/material.dart';

import 'Starting_Screen/splash.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Zeelry',
      theme: ThemeData(
        fontFamily: 'Poppins',
        // bottomNavigationBarTheme: bottomNavigationBarTheme,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const demis(),
    );
  }
}

