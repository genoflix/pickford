import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAU-18YyTgQFIUzujuNU7-9mx7EXbggLxA",
            authDomain: "pickford-6c88b.firebaseapp.com",
            projectId: "pickford-6c88b",
            storageBucket: "pickford-6c88b.appspot.com",
            messagingSenderId: "736263716631",
            appId: "1:736263716631:web:3ffa96527f2efc48f78152",
            measurementId: "G-B3YN6D7EYH"));
  } else {
    await Firebase.initializeApp();
  }
}
