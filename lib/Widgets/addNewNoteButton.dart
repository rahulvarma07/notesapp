import 'package:flutter/material.dart';
import 'addNewNote.dart';

class AddNewNoteButton extends StatelessWidget {
  const AddNewNoteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 50,
      decoration: BoxDecoration(
        border: Border.all(width: 2),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: Center(child: IconButton(onPressed: (){
        showTheDialogBox(context);
      }, icon:const  Icon(Icons.add), splashRadius: double.infinity,),),
    );
  }
}
