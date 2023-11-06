import 'package:flutter/material.dart';
import 'package:growfood/views/Navbar.dart';
import 'package:growfood/widgets/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'GrowFood',
        theme: ThemeData(
          fontFamily: 'Manrope',
          primarySwatch: Colors.green,
        ),
        home: FutureBuilder(
            future: Future.delayed(const Duration(seconds: 2)),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const SplashScreen();
              } else {
                return MaterialApp(
                  title: 'GrowFood',
                  debugShowCheckedModeBanner: false,
                  theme: ThemeData(
                    primarySwatch: Colors.green,
                  ),
                  home: const Navbar(),
                );
              }
            }));
  }
}
