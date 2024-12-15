// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notesapp/Widgets/TextForms.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../Widgets/Button.dart';

class LoginPage extends StatelessWidget {
  final VoidCallback showLoginPage;
  LoginPage({
    super.key,
    required this.showLoginPage
  });

  final userEmailController = TextEditingController();

  final userPasswordController = TextEditingController();

  // Login Page For Application..
  @override


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      resizeToAvoidBottomInset: false,
      // Login
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.book_outlined),
              Center(child: Text("Login", style: GoogleFonts.nunito(fontSize: 25, fontWeight: FontWeight.w800),)),
              SizedBox(height: 50,),
              Column(
                children: [
                 TextForms(controller: userEmailController, hintText: "E-mail", obscuretext: false),
                  SizedBox(height: 25,),
                  TextForms(controller: userPasswordController, hintText: "Password", obscuretext: true),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                        child: Text("Forgot password?", style: GoogleFonts.nunito(color: Colors.blue, fontSize: 15, fontWeight: FontWeight.bold),),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30,),
              GestureDetector(
                onTap : (){
                  loginTheUser();
                },
                  child: LoginOrSignUpButton(text: "Login",)
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?", style: GoogleFonts.nunito(color: Colors.grey.shade600),),
                  GestureDetector(
                      onTap: showLoginPage,
                      child: Text(" SignUp", style: GoogleFonts.nunito(color: Colors.blue, fontWeight: FontWeight.bold),))
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Divider(thickness: 1,)),
                  Text("  or  ", style: GoogleFonts.nunito(fontSize: 15, color: Colors.black87),),
                  Expanded(child: Divider(thickness: 1,)),
                ],
              ),
              SizedBox(height: 30,),
              OtherSignUpButtons(text: "Login using Google")
            ],
          ),
        ),
      ),
    );
  }
  Future loginTheUser() async{
    if(userPasswordController.text.trim().isNotEmpty && userEmailController.text.trim().isNotEmpty){
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: userEmailController.text.trim(), password: userPasswordController.text.trim());
    }
  }
}

