import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TypeOfNotesButton extends StatelessWidget {
  final String typeOfNotesText;
  int ind;
  int check;

  TypeOfNotesButton({
    super.key,
    required this.typeOfNotesText,
    required this.ind,
    required this.check
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      decoration: BoxDecoration(
        color: (ind == check)?Colors.yellowAccent:Colors.transparent,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        border: Border.all(width: 1),
      ),
      child: Center(child: Text("   #$typeOfNotesText   ", style: GoogleFonts.nunito(fontWeight: FontWeight.bold),),),
    );
  }
}
