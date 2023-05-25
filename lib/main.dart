import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lime_and_salt_riders_app/splashScreen/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'global/global.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPreferences = await SharedPreferences.getInstance();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lime & Salt Riders Application',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      home: const MySplashScreen(),
    );
  }
}
