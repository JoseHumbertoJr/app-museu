import 'dart:math';
import 'dart:async';
import 'package:app_museu/pages/content.dart';
import 'package:flutter/material.dart';

class SpritePainter extends CustomPainter {
  final Animation<double> _animation;

  SpritePainter(this._animation) : super(repaint: _animation);

  void circle(Canvas canvas, Rect rect, double value) {
    double opacity = (1.0 - (value / 4.0)).clamp(0.0, 1.0);
    Color color = new Color.fromRGBO(54, 54, 54, opacity);

    double size = rect.width / 2;
    double area = size * size;
    double radius = sqrt(area * value / 4);

    final Paint paint = new Paint()..color = color;
    canvas.drawCircle(rect.center, radius, paint);
  }

  @override
  void paint(Canvas canvas, Size size) {
    Rect rect = new Rect.fromLTRB(0.0, 0.0, size.width, size.height);
    for (int wave = 3; wave >= 0; wave--) {
      circle(canvas, rect, wave + _animation.value);
    }
  }

  @override
  bool shouldRepaint(SpritePainter newDelegate) {
    return true;
  }
}

class Search extends StatefulWidget {

  @override
  SearchState createState() => new SearchState();
}

class SearchState extends State<Search>
    with SingleTickerProviderStateMixin {
      
  AnimationController _controller;

  startContentScreenTimer() async {
    var _duration = new Duration(seconds: 4);
    return new Timer(_duration, navigationToNextPage);
  }


  @override
  void initState() {
    super.initState();
    _controller = new AnimationController(
      vsync: this,
    );

  
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

   void navigationToNextPage() {
    Navigator.push(context,  MaterialPageRoute(builder: (context) => Content()));
  }

  void _startAnimation() {
     startContentScreenTimer();
    _controller.stop();
    _controller.reset();
    _controller.repeat(
      period: Duration(seconds: 1),
    );
  }

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
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
                image: AssetImage('assets/img/tela4.png'), 
                colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.23), BlendMode.dstATop),
                fit: BoxFit.cover)
                
                ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
            body: new CustomPaint(
              painter: new SpritePainter(_controller),
              child: new SizedBox(
                width: 800.0,
                height: 1000.0,
              ),

            ),

            floatingActionButton: 
              Align(
                alignment: FractionalOffset(0.55, 0.53),
                  child: Container(
                      height: 90.0,
                      width: 90.0,
                    child:FloatingActionButton(
                      backgroundColor: Color.fromRGBO(54, 54, 54,1),
                      onPressed:  _startAnimation,
                      child: new Icon(Icons.search,
                                      size: 60,
                                      ),
                      
                   ),  
                  )
                  
                  
                  
            )
             
        ),
      ),
    
    
    );
  }
}

void main() => runApp(Search());
