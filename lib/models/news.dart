import '../models/source.dart';

class News{
  Source? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? content;
  bool isLike = false ;

  News({required this.source, required this.author, required this.title,required this.description,
    required this.url,required this.urlToImage,content});
  News.fromJson(Map<String,dynamic> map){
    source = Source.fromJson(map['source']);
    author = map['author'];
    title = map['title'];
    description = map['description'];
    url = map['url'];
    urlToImage = map['urlToImage'];
    content = map['content'];
  }
}
