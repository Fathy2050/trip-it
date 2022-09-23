import 'package:flutter/material.dart';
import 'package:untitled3/widgets/discover_card.dart';

import '../../widgets/popular_destination_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [

          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                  Text("Popular Destinations",style: TextStyle(color: Color(0xffF04E59),fontSize: 25,fontWeight: FontWeight.w500),),
                  SizedBox(height: 4,),
                  Text("10 Tours Avialable",style: TextStyle(color: Colors.black54,fontSize: 15,fontWeight: FontWeight.w500),),
                ],),
              ],
            ),
          ),


          SizedBox(
            height: 170,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context,index){

                    return PopularDisCard();
                }),
          ),


          Padding(
            padding: const EdgeInsets.only(
                left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15,),
                    Text("Discover New Places",style: TextStyle(color: Color(0xffF04E59),fontSize: 25,fontWeight: FontWeight.w500),),
                  ],),
              ],
            ),
          ),


          SizedBox(
            height: 400,

            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context,index){

                  return DiscoverCard();
                }),
          ),
        ],),
    );
  }
}
