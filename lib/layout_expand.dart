import 'package:flutter/material.dart';

class ExpandedPage extends StatefulWidget {
  const ExpandedPage({Key? key}) : super(key: key);
  @override
  State<ExpandedPage> createState() => _ExpandedPageState();
}

class _ExpandedPageState extends State<ExpandedPage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 100.0,
          color: Colors.pink,
        ),
        Expanded(
          child: Container(
            color: Colors.green,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Icon(Icons.home),
                    Icon(Icons.star),
                    Icon(Icons.favorite)
                  ],
                ),
                SizedBox(
                  height: 20.0,
                  child: Text('height 20'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Icon(Icons.home),
                    Icon(Icons.star),
                    Icon(Icons.favorite)
                  ],
                ),
                SizedBox(
                  height: 40.0,
                  child: Align(
                      child: Text('height 40.0'),
                      alignment: Alignment.topLeft),
                ),
                Expanded(
                  child: Container(
                    color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.home,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.yellow,
                        )
                      ],
                    ),
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: Container(
                    color: Colors.purple,
                  ),
                  flex: 1,
                ),
              ],
            ),
          ),
          flex: 2,
        ),
        Expanded(
          child: Container(
            color: Colors.blue,
            child: Align(
              child: Text('Text Alignment'),
              alignment: Alignment.center,
            ),
          ),
          flex: 1,
        ),
      ],
    );
  }
}
