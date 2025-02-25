import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart'; // Import kIsWeb
import 'package:pawfect/main_page.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA7C2-lpwdZM05afgcp-Gf6N3Irh0E7fKQ",
            authDomain: "pawfect-50fbf.firebaseapp.com",
            projectId: "pawfect-50fbf",
            storageBucket: "pawfect-50fbf.appspot.com", // Fix incorrect domain
            messagingSenderId: "135141687807",
            appId: "1:135141687807:web:baa57b3e8bd618060867ca",
            measurementId: "G-B8TL5TS3V0"));
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
