import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:game_arcade/firebase_options.dart';

import 'screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const GameArcadeApp());
}

class GameArcadeApp extends StatelessWidget {
  const GameArcadeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Game Arcade',
      theme: ThemeData.dark(),
      home: const SplashScreen(),
    );
  }
}
