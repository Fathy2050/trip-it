import 'package:flutter/material.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> customSnakeBar(context ,String title ,Color color){
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Container(
      width: 200,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: color,
      ),
      child: Center(child: Text(title,style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),),
    ),
    elevation: 0,
    backgroundColor: Colors.transparent,
    behavior: SnackBarBehavior.floating,
  ));
}
