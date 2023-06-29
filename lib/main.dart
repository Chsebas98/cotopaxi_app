import 'package:cotopaxi_app/atoms/atoms.dart';
import 'package:cotopaxi_app/screens/screens.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Cotopaxi App',
        initialRoute: 'login',
        routes: {
          'login': (context) => const LoginScreen(),
          'home': (context) => const HomeScreen(),
          'register': (context) => const RegisterScreen(),
          'info_page': (context) => const InfoScreen()
        },
        theme: AppTheme.lightTheme);
  }
}
