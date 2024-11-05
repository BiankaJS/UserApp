import 'package:flutter/material.dart';
import 'package:user_app/config/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch:  Colors.lightGreen,
        scaffoldBackgroundColor: Colors.green[50],
      ),
      routerConfig: appRouter,
    );
  }
}