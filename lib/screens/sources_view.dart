import 'package:flutter/material.dart';
import 'package:news_app/search/searchField.dart';
import 'package:news_app/shared/network/remote/api_manager.dart';
import 'package:news_app/tabs/source_tabs.dart';

import '../models/categoryModel.dart';
import '../models/sourceModel.dart';

class source_View extends StatelessWidget {
  static const String RouteName="source_screen";
  Category category;
  String  search;
  source_View(this.category,this.search);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<SourceResponse>(future: api_Manager.getSource(category.Id),
            builder:(context, snapshot) {
              if(snapshot.connectionState==ConnectionState.waiting){
                return Center(child: CircularProgressIndicator(),);
              }

              if(snapshot.hasError){
                Text("something went wrong ");
              }
              if(snapshot.data?.sources==null){
                return Center(child: Text(snapshot.data?.message??''),
                );
              }

              var sources=snapshot.data?.sources??[];
              return sourceTabs(sources,search);
              //   ListView.builder(
              //   itemCount: snapshot.data?.sources?.length,
              //   itemBuilder:(context, index) {
              //   return Text("${snapshot.data?.sources?[index].name}");
              // },);


            },)
      );
  }
}
