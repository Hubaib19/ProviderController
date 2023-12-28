import 'package:flutter/material.dart';

class ContProvider extends ChangeNotifier{
  int counter = 0;
  number(){
    counter++;
    notifyListeners();
  }
  
  lower(){

    if(counter>0){
      counter--;
    }
    notifyListeners();
  }
}