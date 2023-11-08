import 'package:flutter/material.dart';
import 'package:news_app/models/sourceModel.dart';

class sourceTabItem extends StatelessWidget {
  Sources source;
  bool isSelected;
  sourceTabItem(this.source,this.isSelected);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6,horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: isSelected? Color(0xff39A552):Colors.transparent,
        border: Border.all(
          color: Color(0xff39A552),
        )

      ),
      child: Text(source.name??"",style: TextStyle(
        color: isSelected? Colors.white:Color(0xff39A552),
        fontSize: 20
      ),),
    );
  }
}
