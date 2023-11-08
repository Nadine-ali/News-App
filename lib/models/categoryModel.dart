import 'package:flutter/material.dart';

class Category{
  String Id;
  String image;
  Color color;
  String Title;

  Category(this.Id, this.image, this.color, this.Title);

  static List<Category>getCategoryList(){
    return[
      Category("Sports", "assets/images/ball.png", Color(0xffC91C22),"Sports"),
      Category("Politics", "assets/images/Politics.png", Color(0xff003E90),"Politics"),
      Category("Health", "assets/images/health.png", Color(0xffED1E79),"Health"),
      Category("Business", "assets/images/bussines.png", Color(0xffCF7E48),"Business"),
      Category("Environment", "assets/images/environment.png", Color(0xff4882CF),"Environment"),
      Category("Science", "assets/images/science.png", Color(0xffF2D352),"Science"),
    ];
  }


}
