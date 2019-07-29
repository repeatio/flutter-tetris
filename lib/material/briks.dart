import 'package:flutter/material.dart';

const _colorNormal = Colors.black87;

const _colorNull = Colors.black12;

const _colorHighlight = Color(0xFF560000);

/// to control [Brik] item size
class BrikSize extends InheritedWidget {
  const BrikSize({
    Key key,
    @required this.size,
    @required Widget child,
  })  : assert(child != null),
        super(key: key, child: child);

  final Size size;

  static BrikSize of(BuildContext context) {
    final brikSize = context.inheritFromWidgetOfExactType(BrikSize) as BrikSize;
    assert(brikSize != null);
    return brikSize;
  }

  @override
  bool updateShouldNotify(BrikSize old) {
    return old.size != size;
  }
}

///the basic brik for game panel
///a brik is a square , which have three status
///
/// [Brik.normal] a normal showing brik
/// [Brik.empty] a brik show nothing
/// [Brik.highlight] a brik is being highlight
///
class Brik extends StatelessWidget {
  final Color color;

  const Brik._({Key key, this.color}) : super(key: key);

  const Brik.normal() : this._(color: _colorNormal);

  const Brik.empty() : this._(color: _colorNull);

  const Brik.highlight() : this._(color: _colorHighlight);

  @override
  Widget build(BuildContext context) {
    final width = BrikSize.of(context).size.width;
    return SizedBox.fromSize(
      size: BrikSize.of(context).size,
      child: Container(
        margin: EdgeInsets.all(0.05 * width),
        padding: EdgeInsets.all(0.1 * width),
        decoration: BoxDecoration(border: Border.all(width: 0.10 * width, color: color)),
        child: Container(
          color: color,
        ),
      ),
    );
  }
}
