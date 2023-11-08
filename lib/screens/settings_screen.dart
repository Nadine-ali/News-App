import 'package:flutter/material.dart';
import 'package:news_app/layout/home_layout.dart';

import '../Drawer/drawer_view.dart';

class settings_screen extends StatefulWidget {
  const settings_screen({super.key});
static const String RouteName="setings_screen";

  @override
  State<settings_screen> createState() => _settings_screenState();
}

class _settings_screenState extends State<settings_screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        leading: InkWell(
            onTap:() {
              Navigator.pushReplacementNamed(context, home_layout.RouteName);
            },
            child: Icon(Icons.arrow_back_ios_new_sharp)),
        shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20)),
        backgroundColor: Color(0xff39A552),
        title: Text("News App",style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white
        ),),
        centerTitle: true,
      ),
      // drawer: drawerView(drawerItemSelected),
      body: Stack(
        children:[
          Image.asset("assets/images/background.png",
          fit: BoxFit.fill,),
          Column(
              children:
              [
                Container(
                  color: Colors.transparent,
                  width: MediaQuery.of(context).size.height,
                  height: 45,
                  child: Text("Settings",style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(18),
                  child:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Language",style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                      ),
                      ),
                      SizedBox(height: 20),
                      InkWell(
                        // onTap: () {
                        //   showthemebottomsheet(context);
                        // },
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  width: 2,
                                  color:Color(0xff39A552)),
                              borderRadius: BorderRadius.circular(15)),
                          width: MediaQuery.sizeOf(context).width,
                          height: 55,
                          child: Text("language",style: TextStyle(
                              color:Color(0xff39A552),
                              fontSize: 25,
                              fontWeight: FontWeight.w600),),
                        ),
                      ),
                    ],
                  ),
                ),
              ]

          ),
        ]

      ),
    );

  }

  // var category=null;
  //
  // void drawerItemSelected(number){
  //   if(number==drawerView.categories){
  //     category=null;
  //     setState(() {
  //
  //     });
  //     Navigator.pop(context);
  //   }
  //   if(number==drawerView.settings){
  //     Navigator.pushReplacementNamed(context, settings_screen.RouteName);
  //   }
  // }
}
