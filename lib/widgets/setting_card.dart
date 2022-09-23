import 'package:flutter/material.dart';

class SettingCard extends StatefulWidget {
  String icon ;
  String tittle ;
  String subTittle ;

  SettingCard({Key? key , required this.icon , required this.tittle , this.subTittle = ""}) : super(key: key);

  @override
  State<SettingCard> createState() => _SettingCardState();
}

class _SettingCardState extends State<SettingCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(

            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage('images/${widget.icon}.png'),fit: BoxFit.cover),
                  color: Colors.yellow
                ),
              ),
              SizedBox(width: 20,),
              Text(widget.tittle,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),)
            ],
          ),

          Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey,size: 20,)
        ],
      ),
    );
  }
}
