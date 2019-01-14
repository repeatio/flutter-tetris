import 'package:flutter/material.dart';
import 'package:tetris/gamer/gamer.dart';
import 'package:tetris/panel/screen.dart';
import 'package:tetris/panel/controller.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tetris',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Game(child: _HomePage()),
      ),
    );
  }
}

const SCREEN_BORDER_WIDTH = 3.0;

class _HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final screenW = size.width * 0.8;

    return SizedBox.expand(
      child: Container(
        color: Color(0xffefcc19),
        child: Padding(
          padding: MediaQuery.of(context).padding,
          child: Column(
            children: <Widget>[
              Spacer(),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                        color: const Color(0xFF987f0f),
                        width: SCREEN_BORDER_WIDTH),
                    left: BorderSide(
                        color: const Color(0xFF987f0f),
                        width: SCREEN_BORDER_WIDTH),
                    right: BorderSide(
                        color: const Color(0xFFfae36c),
                        width: SCREEN_BORDER_WIDTH),
                    bottom: BorderSide(
                        color: const Color(0xFFfae36c),
                        width: SCREEN_BORDER_WIDTH),
                  ),
                ),
                child: Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black54)),
                  child: Container(
                    padding: const EdgeInsets.all(3),
                    color: SCREEN_BACKGROUND,
                    child: Screen(width: screenW),
                  ),
                ),
              ),
              Spacer(),
              GameController(),
            ],
          ),
        ),
      ),
    );
  }
}
