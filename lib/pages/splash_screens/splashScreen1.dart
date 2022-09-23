
import 'package:flutter/material.dart';
import 'package:untitled3/widgets/splashScreen1Widgets.dart';

class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({Key? key}) : super(key: key);

  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
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
                  Image.asset("images/BG.png"),
                  Positioned(
                      child: Image.asset("images/Character.png")),
                  Positioned(
                    right: 100,
                      child: Image.asset("images/Shape.png")),

                ],
              ),
            ),

            TextWidget(
              title: "Plan Your Trip",
              subTitle: "Plan your trip, choose your destination",
              secSubTitle: "Pick the best place for your holiday",
              top: 45,
            ),
          ],
        ),

    );
  }
}

//Plan Your Trip
//Plan your trip, choose your destination
//Pick the best place for your holiday