import 'package:flutter/cupertino.dart';

class DrawerProvider extends ChangeNotifier{
  int index=0;
  void changeIndex(int i){
    index=i;
    notifyListeners();
  }
}