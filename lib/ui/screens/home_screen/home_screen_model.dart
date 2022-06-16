
import 'package:flutter/material.dart';

class HomeScreenModel extends ChangeNotifier{

   int _counter = 0;

  int get counter => _counter;

  void setCounter (int counter){
    _counter = counter;
  }


  void incrementCounter() {
          _counter++;
          notifyListeners();
  }

   void decrementCounter() {
     _counter--;
     notifyListeners();
   }

}