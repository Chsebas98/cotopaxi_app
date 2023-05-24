import 'package:cotopaxi_app/Presentation/Screens/Views/home_view.dart';
import 'package:cotopaxi_app/Presentation/Screens/navbar_screen.dart';
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
        'login': (context) => LoginScreen(),
        'home': (context) => NavbarView()
      },
      theme:
          ThemeData.light().copyWith(scaffoldBackgroundColor: Colors.grey[300]),
    );
  }
}
