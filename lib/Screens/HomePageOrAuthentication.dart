import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:notesapp/Screens/toogleLoginSIgnUp.dart';

import 'homepage.dart';

class HomePageOrAuthPage extends StatelessWidget {
  const HomePageOrAuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshotData){
          if(snapshotData.hasData){
            return const HomePage();
          }
          else{
            return const togglePageLoginAndSignup();
          }
        }
    );
  }
}

