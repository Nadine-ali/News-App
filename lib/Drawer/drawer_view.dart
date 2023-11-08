import 'package:flutter/material.dart';

class drawerView extends StatelessWidget {

  Function drawerItemselected;
  drawerView(this.drawerItemselected);
  static const int categories=1;
  static const int settings=2;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.7,
      color: Colors.white,
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 45,
            horizontal: 30),
            color: Color(0xff39A552),
            child: Text("News App",style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30
            ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: InkWell(
              onTap: () {
               drawerItemselected(categories);
              },
              child: Text("Categories",style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: InkWell(
              onTap: () {
               drawerItemselected(settings);
              },
              child: Text("Settings",style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),),
            ),
          ),
        ],
      ),
    );
  }
}
