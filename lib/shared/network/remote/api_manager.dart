import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:news_app/models/newsModel.dart';
import 'package:news_app/models/sourceModel.dart';
import 'package:http/http.dart' as http;

class api_Manager{
static Future<SourceResponse> getSource(String category)async{
  Uri URL=Uri.https(
      "newsapi.org",
      "v2/top-headlines/sources",
      {"apiKey":"28e4e14476294158af777fdd4aaa15a2",
       "Category":category});
  http.Response response= await http.get(URL);
  var jsonData=jsonDecode(response.body);
  SourceResponse sourceResponse=SourceResponse.fromJson(jsonData);
  return sourceResponse;
  }

static Future<NewsModel> getNews({required String sourceId, String? search})async{
  Uri URL=Uri.https(
      "newsapi.org",
      "/v2/top-headlines",
      {"apiKey":"28e4e14476294158af777fdd4aaa15a2",
       "sources": sourceId,
        "q":search,
      },);
  http.Response response= await http.get(URL);
  var jsonData=jsonDecode(response.body);
  NewsModel newsModel=NewsModel.fromJson(jsonData);
  return newsModel;
  }
}