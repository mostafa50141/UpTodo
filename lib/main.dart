import 'package:flutter/material.dart';
import 'package:uptodo/features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xff121212),
      ),
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
