import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/pages/main_app_pages/catalog_page.dart';
import 'package:untitled3/widgets/custom_app_bar.dart';
import '../pages/main_app_pages/favorite_page.dart';
import '../pages/main_app_pages/home_page.dart';
import '../pages/main_app_pages/profile_page.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({Key? key}) : super(key: key);

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {

  PageController _controller = new PageController();
  late int navActiveIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(children: [

        Padding(
          padding: const EdgeInsets.only(left: 20,right:20,top: 30),
          child: Container(
                height: 60,
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    (navActiveIndex == 3)? Text(''):Icon(Icons.menu_rounded,size: 30,),
                    Text(appBarTitle(navActiveIndex),style: TextStyle(fontWeight: FontWeight.w400,fontSize: 26),),
                    (navActiveIndex == 0)?Icon(Icons.search,color: Colors.black87,):SizedBox(width: 20,),
                  ],),
              ),
        ),

        // Expanded(
        //   child: ListView.builder(
        //       physics: BouncingScrollPhysics(),
        //       itemCount: 5,
        //       itemBuilder: (context , index){
        //         return LocationCard();
        //       }),
        // )

        Expanded(
          child: PageView(
            physics: BouncingScrollPhysics(),
            onPageChanged: (index){
              setState(() {
                navActiveIndex = index;
              });
            },
            controller: _controller,
           // physics: NeverScrollableScrollPhysics(),
            children: [
              HomePage(),
              CatalogPage(),
              FavoritePage(),
              ProfilePage(),
            ],
          ),
        ),

      ],),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        iconSize: 30,
        splashColor: Color(0xffF04E59),
        height: 80,
        inactiveColor: Colors.white,
        activeColor: Colors.pink.shade800,
        backgroundGradient: LinearGradient(
          colors: [Color(0xffF04E59),Color(0xffDB2A7C)],
          // begin: ,
          // end: ,
        ),
        icons: [
          Icons.home_filled,
          Icons.explore_outlined,
          Icons.favorite_border_rounded,
          Icons.person_outline,
        ],

        gapLocation: GapLocation.none,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32, onTap: (index ) {



          setState(() {
            navActiveIndex = index;
            _controller.animateToPage(index,
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut
            );
          });
          },
        activeIndex: navActiveIndex,

      ),
    ));
  }
}
