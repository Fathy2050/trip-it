import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:untitled3/layout/main_layout.dart';
import 'package:untitled3/pages/authentication_screens/sign_up.dart';
import '../../api/api.dart';
import '../../models/user.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}



class _LoginPageState extends State<LoginPage> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  login() async{

    LoginModel res = LoginModel.fromjson(await Api.post_login_data(emailController.text, passwordController.text));
    print( res.code);


    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Container(
        width: 200,
        height: 70,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.green,
        ),
        child: Center(child: Text("Loged in successfully",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
    ));


    if(res.code == 200){

      Navigator.push(context, MaterialPageRoute(builder: (context) => const MainLayout()));

    }else if(res.code == 400){
      print('wrong password');

    }else{
      print('please enter your email and password');
    }

  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Container(
          width: size.width,
          height: size.height,
          decoration: const BoxDecoration(
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
                      padding: const EdgeInsets.symmetric(horizontal: 30,),
                      width: size.width * .85,
                      height: size.height * .35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

                          const SizedBox(height: 20,),
                          const Text("Sign In",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 25,color: Color(0xff111111)),),
                          const SizedBox(height: 10,),

                          TextField(
                            controller: emailController,
                            style: const TextStyle(fontSize: 13),
                            decoration: const InputDecoration(hintText: "Email"),

                          ),
                          const SizedBox(height: 10,),

                          TextField(
                            obscureText: true,
                            controller: passwordController,
                            style: const TextStyle(fontSize: 12),
                            decoration: const InputDecoration(hintText: "Password"),
                          ),
                          const SizedBox(height: 15,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [const Text("Forgot password?",style: TextStyle(color: Color(0xffF04E59),fontSize: 12.5,fontWeight: FontWeight.w400),)],),

                          Container(

                            alignment: Alignment.center,
                            height: 100,
                            child: SlideAction(
                              outerColor: const Color(0xffF04E59),
                              innerColor: Colors.redAccent.shade100,
                              elevation: 0,
                              text: 'Sign In',
                              textStyle: const TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w300),
                              sliderButtonIcon: Icon(Icons.login_rounded,color: Colors.white.withOpacity(.9),),
                              sliderButtonIconSize: 100,
                              onSubmit:() {
                                login();
                              },
                            ),
                          ),

                        ],),
                    ),
                  ),


              ],),
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
                const SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don’t have an account?  ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300),),

                    GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignUpPage()));
                        },
                        child: const Text("Sign up",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),)),

                  ],),
                const SizedBox(height: 80,),

              ],))

          ],),),
      )),
    );
  }
}
