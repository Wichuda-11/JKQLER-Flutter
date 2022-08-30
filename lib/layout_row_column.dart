import 'package:flutter/material.dart';

class RowColumnPage extends StatefulWidget {
  const RowColumnPage({Key? key}) : super(key: key);
  @override
  State<RowColumnPage> createState() => _RowColumnPageState();
}

class _RowColumnPageState extends State<RowColumnPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Icon(Icons.home,
              color: Colors.red,
              size: 30,
            ),
            Icon(Icons.recycling,
              color: Colors.red,
              size: 30,
            ),
            Icon(Icons.favorite,
              color: Colors.red,
              size: 30,
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Icon(Icons.home,
              color: Colors.grey,
              size: 30,
            ),
            Icon(Icons.star,
              color: Colors.grey,
              size: 30,
            ),
            Icon(Icons.apple,
              color: Colors.grey,
              size: 30,
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Icon(Icons.home,
              color: Color.fromARGB(255, 10, 135, 238),
              size: 30,
            ),
            Icon(Icons.star,
              color: Color.fromARGB(255, 10, 135, 238),
              size: 30,
            ),
            Icon(Icons.apple,
              color: Color.fromARGB(255, 10, 135, 238),
              size: 30,
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Icon(Icons.home,
              color: Color.fromARGB(255, 10, 135, 238),
              size: 30,
            ),
            Icon(Icons.star,
              color: Color.fromARGB(255, 10, 135, 238),
              size: 30,
            ),
            Icon(Icons.apple,
              color: Color.fromARGB(255, 10, 135, 238),
              size: 30,
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Icon(Icons.home,
              color: Colors.grey,
              size: 30,
            ),
            Icon(Icons.star,
              color: Colors.grey,
              size: 30,
            ),
            Icon(Icons.apple,
              color: Colors.grey,
              size: 30,
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Icon(Icons.bookmark,
              color: Colors.red,
              size: 30,
            ),
            Icon(Icons.star,
              color: Colors.red,
              size: 30,
            ),
            Icon(Icons.favorite,
              color: Colors.red,
              size: 30,
            )
          ],
        ),
      ],
    );
  }
}
