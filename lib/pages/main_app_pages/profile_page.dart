import 'package:flutter/material.dart';

import '../../widgets/setting_card.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
              Container(
                width: size.width,
                height: size.height * 0.2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey,
                        image: DecorationImage(image: AssetImage('')),
                      ),
                    ),
                    SizedBox(height: 10,),


                    Text('Fathy',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 24,color: Colors.black54),),
                    SizedBox(height: 6,),


                    Text('Mohamed_Fathy@gmail.com',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18,color: Colors.grey),),
                    //SizedBox(height: 30,),

                  ],
                ),
              ),



            Column(children: [
              SizedBox(height:30 ,),
              SettingCard(icon: "111",tittle: "Notification",subTittle: "04",),
              SettingCard(icon: "222",tittle: "Tours",),
              SettingCard(icon: "333",tittle: "Location",),
              SettingCard(icon: "444",tittle: "Language",),
              SettingCard(icon: "555",tittle: "Invite Friends",),
              SettingCard(icon: "666",tittle: "Help Center",),
              SettingCard(icon: "777",tittle: "Settings",),
              SettingCard(icon: "888",tittle: "Log Out",),

            ],)

          ],
        ),
      ),
    );
  }
}
