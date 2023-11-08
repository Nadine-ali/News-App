import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Drawer/drawer_view.dart';
import 'package:news_app/models/categoryModel.dart';
import 'package:news_app/screens/category_view.dart';
import 'package:news_app/screens/settings_screen.dart';
import 'package:news_app/screens/sources_view.dart';
import 'package:news_app/search/searchField.dart';

class home_layout extends StatefulWidget {

  static const String RouteName="home_layout";
  bool search=false;

  @override
  State<home_layout> createState() => _home_layoutState();
}

class _home_layoutState extends State<home_layout> {
  var searchController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        actions:widget.search?[]: [
          IconButton(onPressed:() {
            widget.search=true;
            setState(() {

            });
          }, icon: Icon(Icons.search,color: Colors.white,size: 30,))
        ],
        shape: RoundedRectangleBorder(borderRadius:BorderRadius.only(
          bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)
        )),
        backgroundColor: Color(0xff39A552),
        title: widget.search?TextField(
          onChanged: (value) {
            searchController.text;
            setState(() {

            });
          },
          controller: searchController,
          decoration:
          InputDecoration(
              prefixIcon: InkWell(
                  onTap: () {
                    searchController.text="";
                    widget.search=false;
                    setState(() {

                    });
                  },
                  child: Icon(Icons.close)),
              suffixIcon: Icon(Icons.search),
              prefixIconColor: Colors.green,
              suffixIconColor: Colors.green,
              hintText: "enter search item",
              fillColor: Colors.white,
              filled: true,
              focusColor: Colors.white,
              contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(
                    color: Colors.white,
                  )
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(
                      color: Colors.white
                  )
              )
          )
          ,
        ):Text("News App",style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white
        ),),
        centerTitle: true,
      ),
      drawer: drawerView(drawerItemSelected),
      body: Stack(
        children:[
          Image.asset("assets/images/background.png",
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            fit: BoxFit.cover,
          ),
          category==null?categoryView(whenCategorySelected):
          source_View(category!,
              searchController.text),
        ]
      ),
    );
  }


  void drawerItemSelected(number){
    if(number==drawerView.categories){
      category=null;
      setState(() {

      });
      Navigator.pop(context);
    }
    if(number==drawerView.settings){
      Navigator.pushReplacementNamed(context, settings_screen.RouteName);
    }
  }
 var category=null;
  void whenCategorySelected(selectedCategory){
    category=selectedCategory;
  setState(() {

  });
  }
}
