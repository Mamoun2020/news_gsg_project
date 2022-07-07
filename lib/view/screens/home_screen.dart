import 'package:flutter/material.dart';
import '../../data/news_fake.dart';
import '../../models/news.dart';
import 'all_news_screens.dart';
import 'favorite_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  likeNews(News newsModel) {
    int index = listNews.indexOf(newsModel);
    listNews[index].isLike = !listNews[index].isLike;
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('News App'),
          bottom: const TabBar(tabs: [
            Tab(
              text: 'ALL',
            ),
            Tab(
              text: 'FAVOURITE',
            )
          ]),
        ),
        body: TabBarView(children: [AllNewsScreen(likeNews), FavoriteScreen(likeNews)]),
      ),
    );
  }
}
