import 'package:flutter_web/material.dart';
import 'package:flutter_web/services.dart';

import 'gamer.dart';

///keyboard controller to play game
class KeyboardController extends StatefulWidget {
  final Widget child;

  KeyboardController({this.child});

  @override
  _KeyboardControllerState createState() => _KeyboardControllerState();
}

class _KeyboardControllerState extends State<KeyboardController> {
  @override
  void initState() {
    super.initState();
    RawKeyboard.instance.addListener(_onKey);
  }

  void _onKey(RawKeyEvent event) {
    if (event is RawKeyUpEvent) {
      return;
    }


    final key = (event.data as RawKeyEventDataAndroid).keyCode;
    debugPrint("key : ${key}");

    final game = Game.of(context);

    if (key == 38) {
      game.rotate();
    } else if (key == 40) {
      game.down();
    } else if (key == 37) {
      game.left();
    } else if (key == 39) {
      game.right();
    } else if (key == 32) {
      game.drop();
    } else if (key == 80) {
      game.pauseOrResume();
    } else if (key == 80) {
      game.soundSwitch();
    } else if (key == 82) {
      game.reset();
    }
  }

  @override
  void dispose() {
    RawKeyboard.instance.removeListener(_onKey);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
