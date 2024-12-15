// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:notesapp/Screens/HomePageOrAuthentication.dart';
import 'package:notesapp/Screens/Reference.dart';
import 'package:notesapp/firebase_options.dart';
import 'package:provider/provider.dart';
import 'Providers/loginOrSignupProvider.dart';
import 'Providers/typeOfNotesProvider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => toggleBetweenLoginAndSignUp(),
        ),
        ChangeNotifierProvider(
          create: (context)=> SelectTypeOfNotes(),
        )
      ],
    child: MyApp(),
    ),
  );

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: HomePageOrAuthPage(),
    );
  }
}
