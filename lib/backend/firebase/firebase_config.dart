import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDtNedkJo6ikNneZZdrheiWbE3Dn2B8kwQ",
            authDomain: "ces-project-f8b4e.firebaseapp.com",
            projectId: "ces-project-f8b4e",
            storageBucket: "ces-project-f8b4e.firebasestorage.app",
            messagingSenderId: "580767851656",
            appId: "1:580767851656:web:d9113b8b64ec1ff3cdeb3d",
            measurementId: "G-FVXFP9ZQKC"));
  } else {
    await Firebase.initializeApp();
  }
}
