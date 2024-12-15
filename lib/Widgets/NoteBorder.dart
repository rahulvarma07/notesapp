// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeNoteBorder extends StatelessWidget {
  final Color ColorData;
  const HomeNoteBorder({super.key, required this.ColorData});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15),
      height: 150,
      width: 170,
      decoration: BoxDecoration(
        color: ColorData,
        borderRadius: BorderRadius.all(Radius.circular(14)),
        border: Border.all(width: 1.5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 10,
            blurRadius: 7,
            offset: Offset(0,1), // changes position of shadow
          ),
        ],
      ),
      child: Transform.rotate(
        angle: -1.57,
        child: Container(
          decoration: BoxDecoration(
            //border: Border.all(width: 1)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("#work", style: GoogleFonts.nunito(fontWeight: FontWeight.w800),), 
              Text("Tasks to complete", style: GoogleFonts.nunito(fontWeight: FontWeight.w700),), 
              Padding(padding: EdgeInsets.all(4),
                child: Text("Haahahahahahhaaaaaaaaaaaaaaaaaaaaaaaaa", style: GoogleFonts.nunito(color: Colors.black45),),
              )
            ],
          )
        ),
      ),
    );
  }
}
