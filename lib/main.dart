import 'package:flutter/material.dart';
import 'package:manch/dashboard/HomeScreen.dart';
import 'package:manch/onboarding/login/login_screen.dart';
import 'package:manch/onboarding/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => const SplashScreen(),
        '/home': (BuildContext context) => const HomeScreen(),
        '/login': (BuildContext context) => const LoginScreen(),
      },
    );
  }
}
