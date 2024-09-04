

import 'package:flutter/cupertino.dart';

class CloudSignInSliderNotifier extends ChangeNotifier{
  int currentIndex = 0;

  void setCurrentIndex(int index){
    currentIndex=index;
    notifyListeners();
  }
  void init(){
    currentIndex=0;
  }
}