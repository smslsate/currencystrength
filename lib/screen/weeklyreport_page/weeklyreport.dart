import 'package:flutter/material.dart';
import 'app_scaffold.dart';

class AnimatedOpacityPage extends StatefulWidget {
  static const routeName = 'animatedOpacity';

  @override
  _AnimatedOpacityPageState createState() => _AnimatedOpacityPageState();
}

class _AnimatedOpacityPageState extends State<AnimatedOpacityPage> {
  var _opaque = true;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'AnimatedOpacity',
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _opaque = !_opaque;
          });
        },
        child: const Icon(Icons.refresh),
      ),
      child: Center(
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 500),
          opacity: _opaque ? 1 : 0.3,
          child: Text(
            'Dont be Afraid   You can do it',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60),
          ),
        ),
      ),
    );
  }
}
