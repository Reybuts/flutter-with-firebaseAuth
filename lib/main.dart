import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'dashboard.dart';
import 'loginform.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBfScXiJm7XPnkjyh8giJXf0AuWpvQOYtI",
  authDomain: "sign-6fa79.firebaseapp.com",
  projectId: "sign-6fa79",
  storageBucket: "sign-6fa79.appspot.com",
  messagingSenderId: "597639353115",
  appId: "1:597639353115:web:65e10f76bf49eea34039be",
  measurementId: "G-7L196J5FPG"));
  } else {
    await Firebase.initializeApp();
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Firebase Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginForm(),
        '/dashboard': (context) => Dashboard(),
      },
    );
  }
}
