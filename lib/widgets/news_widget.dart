

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/news.dart';
import '../view/screens/contactus_screen.dart';

class NewsWidget extends StatelessWidget {
  News newsModel;
  Function fun;
  // String whatsup = 'whatsapp://send?phone=972597518653=${uri.encodeFull()}';
  // String mobileNumber = '0592570714';
  NewsWidget(this.newsModel, this.fun);
  Future<void> _launchBrowser() async{
  launchUrl(Uri.parse("tel:0592570714"));
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        // _launchBrowser();
        Navigator.push(context, MaterialPageRoute(builder: (context) => ContactusScreen()));
        },

      child: Container(
        child: Row(children: [
          SizedBox(width: 64,height: 64,child: CachedNetworkImage(
            imageUrl: newsModel.urlToImage ?? '',
            errorWidget: (context,message,widget){return Icon(Icons.error,);},
          ),
          ),
          Expanded(
              child: Column(
                children: [
                  Text(newsModel.title ?? '',style:TextStyle(fontWeight:FontWeight.bold,overflow:TextOverflow.ellipsis ),maxLines: 1, ),
                  Text(newsModel.content ?? '',overflow: TextOverflow.ellipsis,maxLines: 2,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: Text(newsModel.author ?? '',maxLines: 1,overflow: TextOverflow.ellipsis,)),
                      IconButton(
                          onPressed: (){
                            fun(newsModel);
                          }, icon:
                      Icon(Icons.favorite,
                        color: newsModel.isLike ? Colors.red : Colors.grey,
                      )),
                    ],),
                ],
              )),
        ],),
      ),
    );
  }
}
