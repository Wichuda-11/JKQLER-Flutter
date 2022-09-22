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
            image: AssetImage('assets/images/Exam.jpg'),
            fit: BoxFit.fill,
          ),
          border: Border.all(
            width: 1.0, 
            color: Colors.grey,
          ),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 94, 92, 92),
              blurRadius: 10.0, // soften the shadow
              spreadRadius: 7.0, //extend the shadow
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
