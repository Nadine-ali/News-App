
import 'package:flutter/material.dart';
import 'package:news_app/models/categoryModel.dart';


class categoryItem extends StatelessWidget {

  Category category;
  int index;
  categoryItem(this.category,this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.all(15),
        width: 200,
        height: 200,
        decoration: BoxDecoration(
            color: category.color,
            borderRadius: BorderRadius.only(
            topLeft:Radius.circular(15),
            topRight: Radius.circular(15),
            bottomLeft: index.isEven?Radius.circular(15):Radius.zero,
            bottomRight: index.isOdd?Radius.circular(15):Radius.zero,
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(category.image,
            height: 110,
            width: 110,),
            Text(category.Title,style:
              TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),),
          ],
        ),
      ),
    );
  }
}
