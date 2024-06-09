import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_and_note/view/screens/main_screen.dart';

void main() {
  runApp(const MyApp());

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0xFFFDE49E),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 37, 102, 61),
          centerTitle: true,
        ),
        scaffoldBackgroundColor: Color.fromARGB(255, 140, 140, 140),
      ),
      home: const MainScreen(),
    );
  }
}
