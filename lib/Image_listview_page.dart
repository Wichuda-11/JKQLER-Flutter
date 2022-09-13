import 'package:flutter/material.dart';

class Listview extends StatefulWidget {
  const Listview({Key? key}) : super(key: key);
  @override
  State<Listview> createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {
  double douHeight = 125.0; //ตัวแปล
  double douWidth = 125.0;
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical, //horizontal,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: douHeight,
                width: douWidth,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/pubglogo.png'),
                    fit: BoxFit.fill,
                  ),
                  border: Border.all(
                    width: 3.0,
                    color: Colors.purple,
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
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pubg Mobile',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    'Level Infinite',
                    style: TextStyle(color: Colors.grey, fontSize: 20.0),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: douHeight,
                width: douWidth,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/pubgSnow.jpeg'),
                    fit: BoxFit.fill,
                  ),
                  border: Border.all(
                    width: 3.0,
                    color: Colors.purple,
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
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pubg Snow',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    'Level Infinite',
                    style: TextStyle(color: Colors.grey, fontSize: 20.0),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: douHeight,
                width: douWidth,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/pubg01.png'),
                    fit: BoxFit.fill,
                  ),
                  border: Border.all(
                    width: 3.0,
                    color: Colors.purple,
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
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pubg Gun',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    'Level Infinite',
                    style: TextStyle(color: Colors.grey, fontSize: 20.0),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: douHeight,
                width: douWidth,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/pubg02.jpeg'),
                    fit: BoxFit.fill,
                  ),
                  border: Border.all(
                    width: 3.0,
                    color: Colors.purple,
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
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pubg Sniper',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    'Level Infinite',
                    style: TextStyle(color: Colors.grey, fontSize: 20.0),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: douHeight,
                width: douWidth,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/rov.png'),
                    fit: BoxFit.fill,
                  ),
                  border: Border.all(
                    width: 3.0,
                    color: Colors.purple,
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
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ROV',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    'Garena',
                    style: TextStyle(color: Colors.grey, fontSize: 20.0),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: douHeight,
                width: douWidth,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/dota2.jpg'),
                    fit: BoxFit.fill,
                  ),
                  border: Border.all(
                    width: 3.0,
                    color: Colors.purple,
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
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dota2',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    'Valve Corporation',
                    style: TextStyle(color: Colors.grey, fontSize: 20.0),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: douHeight,
                width: douWidth,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/LL.jpg'),
                    fit: BoxFit.fill,
                  ),
                  border: Border.all(
                    width: 3.0,
                    color: Colors.purple,
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
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'league of legends',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    'Garena',
                    style: TextStyle(color: Colors.grey, fontSize: 20.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
