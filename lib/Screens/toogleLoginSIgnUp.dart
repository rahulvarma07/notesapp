import 'package:flutter/material.dart';
import 'package:notesapp/Screens/LoginPage.dart';
import 'package:notesapp/Screens/SignUpPage.dart';
import 'package:provider/provider.dart';
import '../Providers/loginOrSignupProvider.dart';

class togglePageLoginAndSignup extends StatelessWidget {
  const togglePageLoginAndSignup({super.key});

  @override

  Widget build(BuildContext context) {
    return  Consumer<toggleBetweenLoginAndSignUp>( builder : (context, value, _) {
        if(value.showLoginPage){
          return LoginPage(showLoginPage: value.togglePage);
        }
        else {
          return SignUpPage(showSignUpPage: value.togglePage);
        }
      },);
  }
}
