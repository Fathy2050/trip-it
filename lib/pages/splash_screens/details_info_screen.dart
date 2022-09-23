import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsInfoScreen extends StatefulWidget {
  const DetailsInfoScreen({Key? key}) : super(key: key);

  @override
  State<DetailsInfoScreen> createState() => _DetailsInfoScreenState();
}

class _DetailsInfoScreenState extends State<DetailsInfoScreen> {

  PageController _pageController = PageController(viewportFraction: 0.5);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [



          Padding(
            padding: const EdgeInsets.only(left: 20,right:20,top: 30),
            child: Container(
              height: 50,
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 25,
                    height: 25,
                    child: IconButton(
                        onPressed: (){
                          Navigator.pop(context);
                          },
                        icon: Icon(Icons.arrow_back_ios_new_rounded,size: 22,color: Colors.grey,)),
                  ),
                  Text('Paris',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 26),),
                  Icon(Icons.search,color: Colors.grey,size: 25,),
                ],),
            ),
          ),


          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(

                clipBehavior: Clip.none,
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('images/paris.png'),fit: BoxFit.cover),
                  color: Colors.yellow,
                ),
                child: Container(
                  clipBehavior: Clip.none,
                  color: Colors.black.withOpacity(.3),
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 50,),
                    Text('Top 10 Favorate \n Destinations  in Paris',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 26,color: Colors.white),),



                  ],

                ),
                ),
              ),
              Positioned(
                top: 140,
                child: Container(
                  clipBehavior: Clip.none,
                  width:MediaQuery.of(context).size.width,
                  height: 200,
                  child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        PageView(
                          controller: _pageController,
                          children: [

                            Container(
                              margin: EdgeInsets.all(30),
                              height: 170,
                              width: 140,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.yellow,
                                  image: DecorationImage(image: AssetImage('images/11.png'),fit: BoxFit.cover)

                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(30),
                              height: 140,
                              width: 140,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.yellow,
                                  image: DecorationImage(image: AssetImage('images/22.png'),fit: BoxFit.cover)


                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(30),
                              height: 140,
                              width: 140,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.yellow,
                                image: DecorationImage(image: AssetImage('images/33.png'),fit: BoxFit.cover)
                              ),
                            ),

                          ],),
                      ]
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 90,),
          Text('Places to Visit',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 24),),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 30),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 324,
              child: GridView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1/1.2

                  ),
                  itemBuilder: (context,index){
                    return Column(
                      children: [
                        Container(
                          width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(image: AssetImage('images/44.png'),fit: BoxFit.cover)
                        ),
                        ),

                        SizedBox(height: 7,),
                        Padding(
                          padding: const EdgeInsets.only(left: 32),
                          child: Row(
                            children: [
                              Text('Day 1,2,3'),
                              SizedBox(width: 50,),
                              Text('34%'),

                            ],
                          ),
                        ),

                      ],
                    );
                  }),
            ),
          )


        ],),

    ));
  }
}
