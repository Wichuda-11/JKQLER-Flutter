import 'package:flutter/material.dart';
import 'dart:math';
import 'package:intl/intl.dart';

class TopFloatIcon extends StatefulWidget {
  const TopFloatIcon({Key? key}) : super(key: key); 
  
  @override
  State<TopFloatIcon> createState() => _TopFloatIconState();
}

class _TopFloatIconState extends State<TopFloatIcon> {
  int _counter = 0;
  int _multiply = 1250;
  var objFormatDouble2 = NumberFormat('#,##0.00');
  var objFormatInt = NumberFormat('#,##0');
  
  void _increaseCounter() {
    setState(() {
      _counter++;
    });
  } //increase counter

  void _decreaseCounter() {
    setState(() {
      _counter--;
    });
  } //decrease counter

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  } //reset counter

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 100.0,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FloatingActionButton(
                  onPressed: _increaseCounter,
                  child: Icon(
                  Icons.add,
                  color: Colors.white,
                  ),
                  tooltip: 'Increase',
                ),
                FloatingActionButton(
                  onPressed: _resetCounter,
                  child: Icon(
                  Icons.restart_alt,
                  color: Colors.black,
                  ),
                  tooltip: 'Reset',
                ),
                FloatingActionButton(
                  onPressed: _decreaseCounter,
                  child: Icon(
                  Icons.remove,
                  color: Colors.white,
                  ),
                  tooltip: 'Decrease',
                ),
            ],
          ),
        ),
      ),
      Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'You have pushed the button (times) = ',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                Text(
                  '${objFormatInt.format(_counter)}',
                  style: TextStyle(fontSize: 20, color: Colors.green),
                  ),
              ],
            ),
            SizedBox(
            height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '$_counter x ${objFormatInt.format(_multiply)} times = ',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                Text(
                  '${objFormatInt.format(_counter * _multiply)}',
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Square root of ${objFormatInt.format(_counter * _multiply)} = ',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                Text(
                  '${objFormatDouble2.format(sqrt(_counter * _multiply))}',
                  style: TextStyle(fontSize: 20, color: Colors.red),
                ),
              ],
            ),
          ],
        )
        ),
      ],
    );
  }
}
