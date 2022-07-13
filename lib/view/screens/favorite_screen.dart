import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../data/news_fake.dart';
import '../../widgets/news_widget.dart';

class FavoriteScreen extends StatelessWidget {
  Function function;
  FavoriteScreen(this.function);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return listNews.where((element) => element.isLike).isEmpty
        ? Lottie.asset('assets/animations/empty.json') :
    ListView.builder(
        itemCount: listNews.where((element) => element.isLike).length,
        itemBuilder: (context, index) {
          return NewsWidget(
              listNews.where((element) => element.isLike).toList()[index],function);
        });
  }
}
