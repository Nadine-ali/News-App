import 'package:flutter/material.dart';
import 'package:news_app/Items/categoryItem.dart';
import 'package:news_app/models/categoryModel.dart';


class categoryView extends StatelessWidget {

  Function whenCategorySelected;
  categoryView(this.whenCategorySelected);

  @override
  Widget build(BuildContext context) {
    var categories=Category.getCategoryList();
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Pick your category \nof interest",
            style:TextStyle(
              color: Colors.black54,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ) ,
          ),
          SizedBox(height: 20,),
          Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16),
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap:() {
                          whenCategorySelected(categories[index]);
                        },
                        child: categoryItem(categories[index],index));
                  },)

          )
        ],
      ),
    );
  }

}
