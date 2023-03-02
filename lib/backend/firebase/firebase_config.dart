import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAm2JUkwDcfdNiODjXAKjWxKk1Ox_SGk2s",
            authDomain: "arcadescore-358412.firebaseapp.com",
            projectId: "arcadescore-358412",
            storageBucket: "arcadescore-358412.appspot.com",
            messagingSenderId: "498270152739",
            appId: "1:498270152739:web:fabe208ca0d01140376996",
            measurementId: "G-7LCLLX6MZM"));
  } else {
    await Firebase.initializeApp();
  }
}
