import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBwkJUpcEH7JQfYAerTDeR-wYWSbVAI6CM",
            authDomain: "hometain-ryn77k.firebaseapp.com",
            projectId: "hometain-ryn77k",
            storageBucket: "hometain-ryn77k.appspot.com",
            messagingSenderId: "847179282259",
            appId: "1:847179282259:web:9bb1d005c8ca8ae57393a6"));
  } else {
    await Firebase.initializeApp();
  }
}
