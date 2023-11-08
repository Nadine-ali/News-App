import 'package:flutter/material.dart';
import 'package:news_app/models/newsModel.dart';
import 'package:news_app/models/sourceModel.dart';
import 'package:news_app/screens/article_view.dart';
import 'package:news_app/screens/sources_view.dart';

class newsItem extends StatelessWidget {
  Articles article;
  newsItem(this.article);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, article_view.RouteName,
        arguments: article
        );
      },
      child: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(35),
              child: Container(
                height: 200,
                width: 500,
                child: Image.network(article.urlToImage??'',
                height: 200,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fill,),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(article.author??'unknown author',style: TextStyle(
                fontSize: 15,
                color: Colors.black45
              ),),
            ),
            Text(article.title??'',style: TextStyle(
              fontSize: 20,
              color: Colors.black54
            ),),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(article.publishedAt?.substring(0,10)??'',style: TextStyle(
                fontSize: 15,
                color: Colors.black45,
              ),),
            ),
          ],

        ),
      ),
    );
  }
}
