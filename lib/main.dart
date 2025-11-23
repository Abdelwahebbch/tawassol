import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tawassol/screens/about_screen.dart';
import 'package:tawassol/screens/chat_bot_page.dart';
import 'package:tawassol/screens/home_page.dart';
import 'package:tawassol/screens/login_screen.dart';
import 'package:tawassol/screens/plans_screen.dart';
import 'package:tawassol/screens/profile_screen.dart';
import 'package:tawassol/screens/splash_screen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tawassol',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
        '/profile': (context) => ProfileScreen(),
        '/about': (context) => const AboutScreen(),
        '/chatbot': (context) => const ChatBotPage(),
        '/plans': (context) => const PlansScreen(),
      },
    );
  }
}
