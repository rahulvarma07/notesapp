// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../Providers/typeOfNotesProvider.dart';

Future showTheDialogBox(BuildContext context){
  return showModalBottomSheet(
      context: context,
      elevation: 10,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20))),
      builder: (context)=>Padding(
        padding: const EdgeInsets.all(10.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // DropDownMenu..
              Center(child: Text("New Note", style: GoogleFonts.cedarvilleCursive(fontWeight: FontWeight.bold, fontSize: 30),)),
              // MainHeading..
              // NotesToWrite..
              Container(
                height: 600,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(width: 1.5),
                    borderRadius: BorderRadius.all(Radius.circular(12))
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 30,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          color: Color(0xFFe6e6e6)
                        ),
                      ),
                      SizedBox(height: 10,),
                      SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: SizedBox(
                          height: 200,
                          width: double.infinity,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              TextFormField(
                                maxLines: 2,
                                style: GoogleFonts.headlandOne(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                                keyboardType: TextInputType.multiline,
                                decoration: InputDecoration(
                                  hintText: "Add a heading.",
                                  hintStyle: GoogleFonts.cedarvilleCursive(fontSize: 20, fontWeight: FontWeight.w800),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  )
                                ),
                              ), 
                              Expanded(child: Divider()),
                              Column(
                                children: [
                                  TextFormField(
                                    style: GoogleFonts.headlandOne(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    keyboardType: TextInputType.multiline,
                                    decoration: InputDecoration(
                                        hintText: "Add your note's",
                                        hintStyle: GoogleFonts.cedarvilleCursive(fontSize: 20, fontWeight: FontWeight.w800),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                        )
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )
  );
}

//

