import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA2ICcoOKLACOMgJGYL6sB7ooCc7V1Qj9o",
            authDomain: "nacsa-prototype.firebaseapp.com",
            projectId: "nacsa-prototype",
            storageBucket: "nacsa-prototype.firebasestorage.app",
            messagingSenderId: "1010176945561",
            appId: "1:1010176945561:web:1c2cb7377ac370c00b3708",
            measurementId: "G-XXSEKP4XD3"));
  } else {
    await Firebase.initializeApp();
  }
}
