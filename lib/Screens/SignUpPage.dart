// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Widgets/Button.dart';
import '../Widgets/TextForms.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  final userEmailController = TextEditingController();
  final userPasswordController = TextEditingController();
  final conformUserPasswordController = TextEditingController();
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
              Center(child: Text("SignUp", style: GoogleFonts.nunito(fontSize: 25, fontWeight: FontWeight.w800),)),
              SizedBox(height: 50,),
              Column(
                children: [
                  TextForms(controller: userEmailController, hintText: "E-mail", obscuretext: false),
                  SizedBox(height: 25,),
                  TextForms(controller: userPasswordController, hintText: "Password", obscuretext: true),
                  SizedBox(height: 25,),
                  TextForms(controller: conformUserPasswordController, hintText: "Conform Password", obscuretext: true)
                ],
              ),
              SizedBox(height: 40,),
              LoginOrSignUpButton(text: "SignUp",),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?", style: GoogleFonts.nunito(color: Colors.grey.shade600),),
                  Text(" Login", style: GoogleFonts.nunito(color: Colors.blue),)
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
              OtherSignUpButtons(text: "Signup using Google",)
            ],
          ),
        ),
      ),
    );
  }
}
