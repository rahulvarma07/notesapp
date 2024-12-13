// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginOrSignUpButton extends StatelessWidget {
  final String text;
  const LoginOrSignUpButton({
    super.key,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.all(Radius.circular(18)),
      ),
      child: Center(child: Text(text, style:GoogleFonts.nunito(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600)),),
    );
  }
}

class OtherSignUpButtons extends StatelessWidget {
  final String text;
  const OtherSignUpButtons({
    super.key,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.6),
        borderRadius: BorderRadius.all(Radius.circular(18)),
        border: Border.all(color: Colors.black, width: 1.5)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset("Assets/Images/googleimg.png",height: 25,),
          Text(text, style:GoogleFonts.nunito(color: Colors.black87, fontSize: 20, fontWeight: FontWeight.w600)),
        ],
      )
    );
  }
}

