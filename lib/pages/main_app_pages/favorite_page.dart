import 'package:flutter/material.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/under.png'),
              SizedBox(height: 20,),
              Text('Oops !',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),),
              SizedBox(height: 10,),

              Text('This page is under construct',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 24,color: Colors.grey),),
              SizedBox(height: 50,),

            ],
          ),
        ),
      ),
    );
  }
}
