import 'package:flutter/material.dart';


class CreeatAccount extends StatelessWidget {
  
  static String tag = 'create-account-page';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(
            color: const Color(0xffFFA751),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color.fromRGBO(255, 167, 81, 1), Color.fromRGBO(255, 233, 174, 1)]

            ),
            image: DecorationImage(
                image: AssetImage('assets/img/tela3.png'), 
                colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.23), BlendMode.dstATop),
                fit: BoxFit.cover)
                
                ),
        child: Scaffold(
          
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Text('My App'),
            centerTitle: true,
            leading: IconButton(
                icon: Icon(
                  Icons.list,
                  color: Colors.white,
                ),
                onPressed: () {}),
          ),
        ),
      ),
    );
  }
}

