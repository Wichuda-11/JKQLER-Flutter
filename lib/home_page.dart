import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200.0,
        width: 200.0,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('assets/images/v5.jpeg'),
            fit: BoxFit.fill,
          ),
          border: Border.all(
            width: 3.0, 
            color: Colors.black,
          ),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10.0, // soften the shadow
              spreadRadius: 5.0, //extend the shadow
              offset: Offset(
                0.0, // Move to right 5 horizontally
                0.0, // Move to bottom 5 Vertically
              ),
            )
          ],
        ),
      ),
    );
  }
}
