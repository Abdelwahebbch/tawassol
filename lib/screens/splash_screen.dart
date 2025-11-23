import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _checkUser();
  }

  Future<void> _checkUser() async {
    await Future.delayed(const Duration(seconds: 2)); // splash delay

    final user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      final data = await UserService().getUserData();
      debugPrint("${data?['Nom']} + splashScreen");

      if (!mounted) return;

      Navigator.pushReplacementNamed(context, '/home', arguments: data);
    } else {
      if (!mounted) return;
      Navigator.pushReplacementNamed(context, '/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0891B2),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 300,
              width: 300,
              child: Image(image: AssetImage("images/logo.png")),
            ),
            Text(
              "Tawassol",
              style: TextStyle(
                fontSize: 35,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 70),
              child: LinearProgressIndicator(),
            ),
            SizedBox(height: 150),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "Developed by Abdelwaheb Bouchahwa",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UserService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<Map<String, dynamic>?> getUserData() async {
    final uid = FirebaseAuth.instance.currentUser?.uid;
    if (uid == null) return null;

    DocumentSnapshot snap = await _db.collection("users").doc(uid).get();

    return snap.data() as Map<String, dynamic>?;
  }
}
