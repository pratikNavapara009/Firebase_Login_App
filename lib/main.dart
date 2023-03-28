import 'package:db_miner_1_app/screens/HomePage.dart';
import 'package:db_miner_1_app/screens/Sign_up.dart';
import 'package:db_miner_1_app/screens/login_Page.dart';
import 'package:db_miner_1_app/screens/splash_screen.dart';
import 'package:db_miner_1_app/screens/welcome_Page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "Splash",
      routes: {
        '/': (context) => const HomePage(),
        'welcome' : (context) => const WelcomePage(),
        'Splash': (context) => const Splash(),
        'Sign_up': (context) => SignupPage(),
        'login_up': (context) => LoginPage(),
      },
    ),
  );
}
