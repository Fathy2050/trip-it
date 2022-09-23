import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiscoverCard extends StatefulWidget {
  Color color ;
  String image ;
  String placeName ;

  DiscoverCard({Key? key , this.image = 'images/pyramids.png', this.placeName = 'Pyramids' , this.color = Colors.blue}) : super(key: key);

  @override
  State<DiscoverCard> createState() => _DiscoverCardState();
}

class _DiscoverCardState extends State<DiscoverCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        //mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            margin: EdgeInsets.only(left: 20,bottom: 10,top: 30),
            height: 260,
            width: 130,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(widget.image),fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(15),
                color: Colors.yellow
            ),
            child: Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    widget.color.withOpacity(.8),
                    widget.color.withOpacity(.4),
                    Colors.transparent,
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              child: Text(widget.placeName,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Colors.white),),
            ),
          ),

          Container(
            width: 130,
            height: 70,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(children: [
                  Icon(Icons.star,color: Colors.amber,size: 20,),
                  Icon(Icons.star,color: Colors.amber,size: 20,),
                  Icon(Icons.star,color: Colors.amber,size: 20,),
                  Icon(Icons.star,color: Colors.amber,size: 20,),
                  Icon(Icons.star,color: Colors.amber,size: 20,),

                ],),
                SizedBox(height: 8,),

                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Row(
                    children: [
                      Text('4.8 (512 Reviews)'),
                    ],
                  ),
                ),
                SizedBox(height: 8,),

                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Row(
                    children: [
                      Text('Egypt'),
                    ],
                  ),
                ),

              ],
            )
          )
        ],
      ),
    );
  }
}
