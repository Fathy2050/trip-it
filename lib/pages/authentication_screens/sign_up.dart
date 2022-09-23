import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:untitled3/pages/authentication_screens/sign_up.dart';

import '../../layout/main_layout.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  bool isTermsSelected = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xffF35454),
              Color(0xffDB2A7C),
            ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(children: [

            Container(
              alignment: Alignment.center,
              height: size.height * .2,
              width: size.width,
              child: Image.asset("images/LogoWhite.png",width: size.width * 1,),

            ),

            Container(
              width: size.width,
              height: size.height * .42,
              child: Stack(
                alignment: Alignment.topCenter,
                clipBehavior: Clip.none,
                children: [

                  Container(
                    width: size.width * .75,
                    height: size.height * .35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white.withOpacity(.2)
                    ),

                  ),

                  Positioned(
                    top: 18,
                    child: Container(
                      width: size.width * .80,
                      height: size.height * .35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white.withOpacity(.2)
                      ),
                    ),
                  ),

                  Positioned(
                    top: 36,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      width: size.width * .85,
                      height: size.height * .5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

                          SizedBox(height: 20,),
                          Text("Sign Up",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 25,color: Color(0xff111111)),),
                          SizedBox(height: 10,),

                          TextField(
                            style: TextStyle(fontSize: 13),
                            decoration: InputDecoration(hintText: "Name"),
                          ),
                          SizedBox(height: 10,),
                          TextField(
                            style: TextStyle(fontSize: 13),
                            decoration: InputDecoration(hintText: "Email"),
                          ),
                          SizedBox(height: 10,),
                          TextField(
                            obscureText: true,
                            style: TextStyle(fontSize: 13),
                            decoration: InputDecoration(hintText: "Password"),
                          ),
                          SizedBox(height: 10,),

                          TextField(
                            style: TextStyle(fontSize: 12),
                            decoration: InputDecoration(hintText: "Phone Number"),
                          ),
                          SizedBox(height: 15,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [

                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    isTermsSelected = !isTermsSelected;
                                  });
                                },
                                child: Container(
                                  width: 20,
                                  height: 20,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Color(0xffF04E59)),
                                    color: (isTermsSelected == true)? Color(0xffF04E59):Colors.white,
                                  ),
                                  child: Center(
                                    child: Icon(Icons.done,size: 12,color: (isTermsSelected == true)? Colors.white:Color(0xffF04E59),),),
                                ),
                              ),
                              SizedBox(width: 10,),
                              Text("I agree the",style: TextStyle(color: Colors.black,fontSize: 12.5,fontWeight: FontWeight.w500),),
                              Text(" Terms & Conditions ",style: TextStyle(color: Color(0xffF04E59),fontSize: 12.5,fontWeight: FontWeight.w400),),

                            ],),

                          // Container(
                          //
                          //   alignment: Alignment.center,
                          //   height: 100,
                          //   child: SlideAction(
                          //     outerColor: Color(0xffF04E59),
                          //     innerColor: Colors.redAccent.shade100,
                          //     elevation: 0,
                          //     text: 'Sign In',
                          //     textStyle: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w300),
                          //     sliderButtonIcon: Icon(Icons.login_rounded,color: Colors.white.withOpacity(.9),),
                          //     sliderButtonIconSize: 100,
                          //     onSubmit:() {
                          //
                          //     },
                          //   ),
                          // ),


                        ],),
                    ),
                  ),


                ],),
            ),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Container(

                alignment: Alignment.center,
                height: 100,
                child: SlideAction(
                  outerColor: Color(0xffF04E59),
                  innerColor: Colors.redAccent.shade100,
                  elevation: 0,
                  text: 'Sign In',
                  textStyle: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w300),
                  sliderButtonIcon: Icon(Icons.login_rounded,color: Colors.white.withOpacity(.9),),
                  sliderButtonIconSize: 100,
                  onSubmit:() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MainLayout()));
                  },
                ),
              ),
            ),
            Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 120),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: .5,color: Colors.white),
                            ),
                            child: Image.asset('images/facebook-logo.png'),
                          ),
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: .5,color: Colors.white),
                            ),
                            child: Image.asset('images/Google.png'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 25,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account?  ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300),),

                        GestureDetector(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),)),

                      ],),
                    SizedBox(height: 80,),

                  ],))
          ],),),
      )),
    );
  }
}
