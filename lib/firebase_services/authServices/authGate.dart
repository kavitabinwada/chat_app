import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../screen/HomePage/HomePage.dart';
import '../../screen/login/login_view.dart';

class Authgate extends StatelessWidget {
  const Authgate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Homepage();
            } else {
              return Login_view();
            }
          }),
    );
  }
}
