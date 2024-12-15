// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notesapp/Widgets/StackOverLayWidget.dart';
import 'package:notesapp/Widgets/addNewNoteButton.dart';
import 'package:provider/provider.dart';

import '../Providers/typeOfNotesProvider.dart';
import '../Widgets/TypeOfNotesButton.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: Icon(Icons.person),
        actions: <IconButton>[
          IconButton(onPressed: (){}, icon: Icon(Icons.light_mode)),
          IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            // Your Note's
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Your Note's",style: GoogleFonts.nunito(fontSize: 30, fontWeight: FontWeight.bold),),
                AddNewNoteButton()
              ],
            ), 
            SizedBox(height: 20,),

            Consumer<SelectTypeOfNotes>(builder: (BuildContext context, SelectTypeOfNotes value, Widget? child){
              return SizedBox(
                height: 40,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: value.listOfTypesOfNotes.length,
                  itemBuilder: (context, ind){
                    return Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: GestureDetector(
                          onTap: (){
                            value.changeTheColorWhenTapped(ind);
                            print(ind);
                          },
                          child: TypeOfNotesButton(typeOfNotesText: value.listOfTypesOfNotes[ind], ind: ind, check: value.realind,)
                      ),
                    );
                  },
                ),
              );
            },),
            SizedBox(height: 50,),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height:490,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Column(
                  children: [
                    Expanded(flex: 1,child: StackOverLay(x1: -0.4, y1: -0.6, x2: 0.8, y2: 0.6,colorsData1: Color(0xFFc7aeee),colorsData2: Color(0xFFb8fd9f),)),
                    Expanded(flex: 1,child: StackOverLay(x1: 0.2, y1: -1.2, x2: 1.3, y2: 0.1,colorsData1: Color(0xFFc2e1f8), colorsData2: Color(0xFFf9dca8),)),
                  ],
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}
