import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import '../../data/news_fake.dart';
import '../../widgets/news_widget.dart';

class AllNewsScreen extends StatelessWidget {
  Function function;
  AllNewsScreen(this.function);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listNews.length,
        itemBuilder: (context, index) {
          return NewsWidget(listNews[index],function);
        });
  }
}
