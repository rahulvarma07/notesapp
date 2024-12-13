// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextForms extends StatelessWidget {
  final  controller;
  final String hintText;
  final bool obscuretext;

  const TextForms({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscuretext
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscuretext,
      decoration: InputDecoration(
        fillColor: Colors.white.withOpacity(0.5),
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 1.5),
          borderRadius: BorderRadius.all(Radius.circular(18)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade400,),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        hintStyle: GoogleFonts.nunito(),
        hintText: hintText
      ),
    );
  }
}
