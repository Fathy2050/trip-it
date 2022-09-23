import 'package:flutter/material.dart';
import 'package:untitled3/widgets/splashScreen1Widgets.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({Key? key}) : super(key: key);

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
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
                Image.asset("images/BG2.png"),
                Positioned(
                    child: Image.asset("images/Character2.png",)),
                Positioned(
                    child: Image.asset("images/Plants2.png")),

              ],
            ),
          ),

          TextWidget(
            title: "Select the Date",
            subTitle: "Select the day, book your ticket, We give",
            secSubTitle: "you the best price We guarantied",
            top: 45,
          ),
        ],
      ),

    );
  }
}
