import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCbOf7iYbtrZUA9JO3lWu2t_pFkmFyPFNI",
            authDomain: "vocability-55a55.firebaseapp.com",
            projectId: "vocability-55a55",
            storageBucket: "vocability-55a55.appspot.com",
            messagingSenderId: "279732522887",
            appId: "1:279732522887:web:a2b97312567f6049708d22"));
  } else {
    await Firebase.initializeApp();
  }
}
