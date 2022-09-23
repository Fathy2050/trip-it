import 'package:flutter/material.dart';

import '../pages/splash_screens/details_info_screen.dart';

class PopularDisCard extends StatefulWidget {
  const PopularDisCard({Key? key}) : super(key: key);

  @override
  State<PopularDisCard> createState() => _PopularDisCardState();
}

class _PopularDisCardState extends State<PopularDisCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsInfoScreen()));
      } ,
      child: Container(
        clipBehavior: Clip.hardEdge,
        margin: EdgeInsets.only(left: 20,top: 30,bottom: 30),
        width: 100,
        height: 100,
        decoration: BoxDecoration(
            color: Colors.pinkAccent,
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(image: AssetImage('images/paris.png'),fit: BoxFit.cover)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.only(left: 10),
              alignment: Alignment.centerLeft,
              width: 100,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white
              ),
              child: Text('Paris',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),
            ),
          ],
        ),
      ),
    );
  }
}
