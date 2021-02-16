import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp exteds Statelesswidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'News App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: NewsListPage.routeName,
      routes: {
        NewsListPage.routeName: (context) => NewsListPage(),
      },
    );
  }
}

class NewsListPage extends StatelessWidget {
  static const routeName = '/article_list';

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('News App'),
      ),
      body: FutureBuilder<String>(
        future: 
            DefaultAssetBUndle.of(context).loadString('assets/articles.json'),
        builder: (context, snapshot){},
      ),
    );
  }
}