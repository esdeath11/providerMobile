import 'package:flutter/cupertino.dart';

class MyModel extends ChangeNotifier{
  static int countData = 0;




  void addCount(){
    countData++;

    print('jumlah count : '+ countData.toString());
  }

  void dispose(){
    countData = 0;
  }
}