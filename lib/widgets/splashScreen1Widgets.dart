import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {

  late String title;
  late String subTitle;
  late String secSubTitle;
  late double top;

  TextWidget({required this.title , required this.subTitle , required this.secSubTitle , required this.top});

  @override
  Widget build(BuildContext context) {
    return Column(children:  [
       SizedBox(height: top,),

      Text(title,style:const TextStyle(fontSize: 23,fontWeight: FontWeight.w700)),

      const SizedBox(height: 20,),

      Text(subTitle,textAlign: TextAlign.center,style: const TextStyle(color: Color(0xff707070),fontSize: 14,fontWeight: FontWeight.w400),),

      const SizedBox(height: 5,),

      Text(secSubTitle,textAlign: TextAlign.center,style: const TextStyle(color: Color(0xff707070),fontSize: 14,fontWeight: FontWeight.w400),)

    ],);
  }
}
//Plan Your Trip
//Plan your trip, choose your destination
//Pick the best place for your holiday