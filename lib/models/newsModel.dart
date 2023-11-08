class NewsModel {
  NewsModel({
      this.status,
      this.code,
      this.message,
      this.totalResults,
      this.articles,});

  NewsModel.fromJson(dynamic json) {
    status = json['status'];
    code = json['code'];
    message = json['message'];
    totalResults = json['totalResults'];
    if (json['articles'] != null) {
      articles = [];
      json['articles'].forEach((v) {
        articles?.add(Articles.fromJson(v));
      });
    }
  }
  String? status;
  String? code;
  String? message;
  int? totalResults;
  List<Articles>? articles;
}

class Articles {
  Source? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

  Articles({
      this.source,
      this.author, 
      this.title, 
      this.description, 
      this.url, 
      this.urlToImage, 
      this.publishedAt, 
      this.content,});

  Articles.fromJson(dynamic json) {
    source = json['source'] != null ? Source.fromJson(json['source']) : null;
    author = json['author'];
    title = json['title'];
    description = json['description'];
    url = json['url'];
    urlToImage = json['urlToImage'];
    publishedAt = json['publishedAt'];
    content = json['content'];
  }

}

class Source {
  String? id;
  String? name;

  Source({
    this.id,
    this.name,});

  Source.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
  }

}

