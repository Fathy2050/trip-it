import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LocationCard extends StatefulWidget {

  String image ;
  String countryName ;
  String cityName ;
  Color color ;
  LocationCard({Key? key , this.image = 'images/NYC.png', this.countryName = 'USA', this.cityName = 'New York' , this.color = Colors.redAccent}) : super(key: key);

  @override
  State<LocationCard> createState() => _LocationCardState();
}

class _LocationCardState extends State<LocationCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      margin: EdgeInsets.only(bottom: 10),
      height: 130,
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.countryName,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20,color: Colors.white),),
          Text(widget.cityName,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20,color: Colors.white),),

        ],),
    ),
    );
  }
}
