import 'package:flutter/material.dart';
import 'package:untitled3/widgets/splashScreen1Widgets.dart';

class SplashScreen3 extends StatefulWidget {
  const SplashScreen3({Key? key}) : super(key: key);

  @override
  State<SplashScreen3> createState() => _SplashScreen3State();
}

class _SplashScreen3State extends State<SplashScreen3> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body:Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Container(
            alignment: Alignment.center,
            height: size.height * .2,
            width: size.width,
            child: Image.asset("images/Logo Color.png",width: size.width * 1,),

          ),


          Container(
            width: size.width,
            height: size.height * .45,
            child: Stack(
              alignment: Alignment.bottomCenter,
              clipBehavior: Clip.none,
              children: [
                Positioned(
                    child: Image.asset("images/BG3.png",width: size.width * 1,)),
                Positioned(
                    child: Image.asset("images/Character3.png",width: size.width * 1,)),


              ],
            ),
          ),

          TextWidget(
            title: "Enjoy your trip",
            subTitle: "Select the day, book your ticket, We give",
            secSubTitle: "you the best price We guarantied",
            top: 45,
          ),
        ],
      ),

    );
  }
}
