import 'dart:io';

import 'package:chat_test_app/firebase_options.dart';
import 'package:chat_test_app/firebase_services/authServices/authGate.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
    // options: Platform.isAndroid
    //     ? FirebaseOptions(
    //         apiKey: 'AIzaSyDaFyBlCj_HRenefBKW4C73SJXQ9NL9Ilg',
    //         appId: '1:795919157602:android:7fd8f0800b89f4ba66c43b',
    //         messagingSenderId: '795919157602',
    //         projectId: 'chattapp-4e696',
    //         storageBucket: 'chattapp-4e696.firebasestorage.app',
    //       )
    //     : FirebaseOptions(
    //         apiKey: 'AIzaSyClQfNGjUXrHJkaMYdrKH10S9xcMG8Pk1g',
    //         appId: '1:795919157602:web:d82d06c72c40141066c43b',
    //         messagingSenderId: '795919157602',
    //         projectId: 'chattapp-4e696',
    //         authDomain: 'chattapp-4e696.firebaseapp.com',
    //         storageBucket: 'chattapp-4e696.firebasestorage.app',
    //         measurementId: 'G-FMY55S3TK6',
    //       )
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Authgate(),
    );
  }
}
