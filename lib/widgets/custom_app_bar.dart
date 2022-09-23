import 'package:flutter/material.dart';

String appBarTitle(int navBarIndex ){
  if(navBarIndex == 0) {
    return 'TOURS';
  }
  else if(navBarIndex == 1)
    {
     return 'LOCATION';
    }
  else if(navBarIndex == 2){
    return 'FAVORATE';
  }
  else {
    return "";
  }
}


