import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:redditflutter/features/auth/screen/login_screen.dart';
import 'package:redditflutter/theme/pallete.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Reddit Flutter',
      theme: Pallete.darkModeAppTheme,
      home: const LoginScreen(),
    );
  }
}
