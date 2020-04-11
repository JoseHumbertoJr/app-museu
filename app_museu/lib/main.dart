import 'package:flutter/material.dart';
import 'pages/content.dart';
import 'pages/create_account.dart';
import 'pages/search.dart';

void main() => runApp(MyApp());

final routes = <String, WidgetBuilder> {
   CreeatAccount.tag: (context) => CreeatAccount(),
  };

class MyApp extends StatelessWidget{

  @override
    Widget build(BuildContext context) {
      
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Search(),
        routes: routes,
      );
  }
}
