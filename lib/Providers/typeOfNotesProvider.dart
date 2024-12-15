// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';

class SelectTypeOfNotes extends ChangeNotifier{
  List<String> _listOfTypeOfNotes = ["All", "work", "personal", "fitness", "Budget"];
  List get listOfTypesOfNotes => _listOfTypeOfNotes;

  int _realind = -1;
  int get realind => _realind;

  void addAnotherType(String typeName){
    _listOfTypeOfNotes.add(typeName);
    notifyListeners();
  }

  void changeTheColorWhenTapped(int ind){
    _realind = ind;
    notifyListeners();
  }

}