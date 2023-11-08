import 'package:flutter/material.dart';
import 'package:news_app/models/newsModel.dart';
import 'package:news_app/screens/article_view.dart';
import 'package:news_app/search/searchField.dart';
import 'package:news_app/shared/network/remote/api_manager.dart';
import 'package:news_app/Items/newsItems.dart';

import '../models/sourceModel.dart';
import '../Items/SourceTabItem.dart';

class sourceTabs extends StatefulWidget {
  List<Sources> sources;
  String? search;
  sourceTabs(this.sources, this.search);

  @override
  State<sourceTabs> createState() => _sourceTabsState();
}

class _sourceTabsState extends State<sourceTabs> {
  int selectedindex=0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTabController(
            length: widget.sources.length,
            child: TabBar(
              padding:EdgeInsets.all(8) ,
              indicator: BoxDecoration(color: Colors.transparent),
              onTap: (index){
              selectedindex=index;
              setState(() {

              });
              },
              isScrollable: true,
              indicatorColor: Colors.green,
              tabs:widget.sources.map((source) =>Tab(
                child: sourceTabItem(source,widget.sources.indexOf(source)==selectedindex),
              )).toList(),
            )
        ),
        FutureBuilder<NewsModel>(
            future: api_Manager.getNews(sourceId:widget.sources[selectedindex].id??'',
            search: widget.search),

            builder:(context, snapshot) {
              if(snapshot.connectionState==ConnectionState.waiting){
                return Center(child: CircularProgressIndicator(),);
              }

              if(snapshot.hasError){
                Text("something went wrong ");
              }
              if(snapshot.data?.status!="ok"){
                return Center(child: Text(snapshot.data?.message??''),
                );
              }
              var news=snapshot.data?.articles??[];

              return Expanded(
                child: ListView.builder(
                  itemCount: news.length,
                  itemBuilder: (context, index) {
                  return newsItem(news[index]);
                },),
              );
            },)
      ],
    );
  }
}
