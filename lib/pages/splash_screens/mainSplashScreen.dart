import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:untitled3/pages/authentication_screens/sign_up.dart';
import 'package:untitled3/pages/splash_screens/splashScreen1.dart';
import 'package:untitled3/pages/splash_screens/splashScreen2.dart';
import 'package:untitled3/pages/splash_screens/splashScreen3.dart';

import '../authentication_screens/log_in.dart';


class MainSplashScreen extends StatefulWidget {
  const MainSplashScreen({Key? key}) : super(key: key);

  @override
  State<MainSplashScreen> createState() => _MainSplashScreenState();
}

class _MainSplashScreenState extends State<MainSplashScreen> {

  PageController _controller = new PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              PageView(
                controller: _controller,
                onPageChanged: (index){
                  setState(() {
                    onLastPage = (index == 2)? true : false ;
                  });
                },
                physics: BouncingScrollPhysics(),
                children: [
                  SplashScreen1(),
                  SplashScreen2(),
                  SplashScreen3(),],),

              Container(
                alignment: Alignment(0,0.85),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [


                      GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                          },
                          child: SizedBox(
                              width: 50,
                              height: 50,
                              child: Center(child: Text("SKIP",style: TextStyle(color: Color(0xff707070)),)))),

                      SmoothPageIndicator(
                        controller: _controller,
                        count: 3,
                        effect: ExpandingDotsEffect(
                          activeDotColor:Color(0xffF04E59) ,
                          dotColor: Color(0xffF04E59).withOpacity(0.3),
                          dotWidth: 12,
                          dotHeight: 12
                        ),

                      ),

                      GestureDetector(
                          onTap: (){
                            (onLastPage == false)? _controller.nextPage(duration: Duration(milliseconds: 400), curve: Curves.easeInOut): Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                          },
                          child: SizedBox(
                              width: 50,
                              height: 50,
                              child: Center(child: Text((onLastPage == true)? "DONE" : "NEXT",style: TextStyle(color: Color(0xffF04E59)),)))),

                    ],
                  ),
                ),
              )
            ],
          ))
    );
  }
}
