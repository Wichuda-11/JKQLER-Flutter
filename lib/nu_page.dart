import 'package:flutter/material.dart';

class NuPage extends StatefulWidget {
  //change when reload app
  const NuPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<NuPage> createState() => _NuPageState();
}

class _NuPageState extends State<NuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Hello NU",
          style: TextStyle(
            fontSize: 30,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
