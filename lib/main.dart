import 'package:flutter/material.dart';
import 'package:locater/Presentation/homepage/home.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:locater/Presentation/splashscreen/spalsh.dart';

void main() {
  runApp(const ProviderScope(child:MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:Splash(),
    );
  }
}

