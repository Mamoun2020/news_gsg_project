import 'package:flutter/material.dart';

import '../../data/news_fake.dart';
import '../../widgets/news_widget.dart';

class FavoriteScreen extends StatelessWidget {
  Function function;
  FavoriteScreen(this.function);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: listNews.where((element) => element.isLike).length,
        itemBuilder: (context, index) {
          return NewsWidget(
              listNews.where((element) => element.isLike).toList()[index],function);
        });
  }
}
