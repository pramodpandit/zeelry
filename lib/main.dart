import 'package:flutter/material.dart';
import 'package:untitled/account_screens/profile_screen.dart';
import 'package:untitled/dashboard_screen.dart';
import 'package:untitled/topup_screens/select_method.dart';

import 'Starting_Screen/splash.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
      home: demis(),
    );
  }
}

