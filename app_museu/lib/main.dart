import 'package:flutter/material.dart';
import 'pages/create_account.dart';
import 'pages/content.dart';
import 'pages/splash.dart';
import 'pages/splash_end.dart';

void main() => runApp(MyApp());

final routes = <String, WidgetBuilder> {
   CreeatAccount.tag: (context) => CreeatAccount(),
  };

class MyApp extends StatelessWidget{

  @override
    Widget build(BuildContext context) {
      
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CreeatAccount(),
        routes: routes,
      );
  }
}
