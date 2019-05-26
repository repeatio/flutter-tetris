import 'package:flutter_web/material.dart';

class Sound extends StatefulWidget {
  final Widget child;

  const Sound({Key key, this.child}) : super(key: key);

  @override
  SoundState createState() => SoundState();

  static SoundState of(BuildContext context) {
    final state = context.ancestorStateOfType(const TypeMatcher<SoundState>());
    assert(state != null, 'can not find Sound widget');
    return state;
  }
}

const _SOUNDS = [
  'clean.mp3',
  'drop.mp3',
  'explosion.mp3',
  'move.mp3',
  'rotate.mp3',
  'start.mp3'
];

class SoundState extends State<Sound> {
  bool mute = false;

  void _play(String name) {}

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  void start() {
    _play('start.mp3');
  }

  void clear() {
    _play('clean.mp3');
  }

  void fall() {
    _play('drop.mp3');
  }

  void rotate() {
    _play('rotate.mp3');
  }

  void move() {
    _play('move.mp3');
  }
}
