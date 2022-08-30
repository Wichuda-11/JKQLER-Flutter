import 'package:flutter/material.dart';

class StackPage extends StatefulWidget {
  const StackPage({Key? key}) : super(key: key);
  @override
  State<StackPage> createState() => _StackPageState();
}

class _StackPageState extends State<StackPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Positioned(
            top: 0.0,
            left: 0.0,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text('1',
                  style: TextStyle(fontSize: 100.0, color: Colors.red)),
            )),
        Positioned(
            top: 0.0,
            right: 0.0,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text('2',
                  style: TextStyle(fontSize: 100.0, color: Colors.blue)),
            )),
        Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text('5',
                  style: TextStyle(fontSize: 100.0, color: Colors.purple)),
            )),
        Positioned(
            bottom: 0.0,
            left: 0.0,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text('3',
                  style: TextStyle(fontSize: 100.0, color: Colors.green)),
            )),
        Positioned(
            bottom: 0.0,
            right: 0.0,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text('4',
                  style: TextStyle(fontSize: 100.0, color: Colors.orange)),
            )),
      ],
    );
  }
}
