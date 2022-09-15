import 'package:flutter/material.dart';

class Games extends StatefulWidget {
  const Games({Key? key}) : super(key: key);
  @override
  State<Games> createState() => _GamesState();
}

class _GamesState extends State<Games> {
  double douHeight = 125.0; //ตัวแปล
  double douWidth = 125.0;
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical, //horizontal,
      children: [
        Row(children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Hot games of the year 2022",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
        ]),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: douHeight,
                width: douWidth,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/Battle.jpg'),
                    fit: BoxFit.fill,
                  ),
                  /*border: Border.all(
                    width: 3.0,
                    color: Colors.grey,
                  ),*/
                  shape: BoxShape.circle,
                  /*boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10.0, // soften the shadow
                      spreadRadius: 5.0, //extend the shadow
                      offset: Offset(
                        0.0, // Move to right 5 horizontally
                        0.0, // Move to bottom 5 Vertically
                      ),
                    )
                  ],*/
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Battlefield 4 Mobile',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    'by Electronic Arts',
                    style: TextStyle(color: Colors.grey, fontSize: 15.0),
                  ),
                  Text(
                    'Price : 1,250 THB',
                    style: TextStyle(color: Colors.red, fontSize: 15.0),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rating: 4.50',
                        style: TextStyle(color: Colors.black, fontSize: 15.0),
                      ),
                          Icon(Icons.star, color: Colors.yellow, size: 20),
                          Icon(Icons.star, color: Colors.yellow, size: 20),
                          Icon(Icons.star, color: Colors.yellow, size: 20),
                          Icon(Icons.star, color: Colors.yellow, size: 20),
                          Icon(Icons.star_half, color: Colors.yellow, size: 20),
                    ],
                  ),
                    ],
                
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: douHeight,
                width: douWidth,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/Diablo.png'),
                    fit: BoxFit.fill,
                  ),
                  /*border: Border.all(
                    width: 3.0,
                    color: Colors.grey,
                  ),*/
                  shape: BoxShape.circle,
                  /*boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10.0, // soften the shadow
                      spreadRadius: 5.0, //extend the shadow
                      offset: Offset(
                        0.0, // Move to right 5 horizontally
                        0.0, // Move to bottom 5 Vertically
                      ),
                    )
                  ],*/
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Diablo Immortal',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    'by Blizzard',
                    style: TextStyle(color: Colors.grey, fontSize: 15.0),
                  ),
                  Text(
                    'Price : 900 THB',
                    style: TextStyle(color: Colors.red, fontSize: 15.0),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rating: 4.20',
                        style: TextStyle(color: Colors.black, fontSize: 15.0),
                      ),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star_half, color: Colors.yellow, size: 20),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: douHeight,
                width: douWidth,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/Final7.png'),
                    fit: BoxFit.fill,
                  ),
                  /*border: Border.all(
                    width: 3.0,
                    color: Colors.grey,
                  ),*/
                  shape: BoxShape.circle,
                  /*boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10.0, // soften the shadow
                      spreadRadius: 5.0, //extend the shadow
                      offset: Offset(
                        0.0, // Move to right 5 horizontally
                        0.0, // Move to bottom 5 Vertically
                      ),
                    )
                  ],*/
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Final Fantasy Vll: Ever Crisis',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    'by Square Enix',
                    style: TextStyle(color: Colors.grey, fontSize: 15.0),
                  ),
                  Text(
                    'Price : 1,500 THB',
                    style: TextStyle(color: Colors.red, fontSize: 15.0),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rating: 3.80',
                        style: TextStyle(color: Colors.black, fontSize: 15.0),
                      ),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star_half, color: Colors.yellow, size: 20),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: douHeight,
                width: douWidth,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/Tomb.png'),
                    fit: BoxFit.fill,
                  ),
                  /*border: Border.all(
                    width: 3.0,
                    color: Colors.grey,
                  ),*/
                  shape: BoxShape.circle,
                  /*boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10.0, // soften the shadow
                      spreadRadius: 5.0, //extend the shadow
                      offset: Offset(
                        0.0, // Move to right 5 horizontally
                        0.0, // Move to bottom 5 Vertically
                      ),
                    )
                  ],*/
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tomb Raider Reloaded',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    'by Square Enix',
                    style: TextStyle(color: Colors.grey, fontSize: 15.0),
                  ),
                  Text(
                    'Price : 1,150 THB',
                    style: TextStyle(color: Colors.red, fontSize: 15.0),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rating: 3.60',
                        style: TextStyle(color: Colors.black, fontSize: 15.0),
                      ),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star_half, color: Colors.yellow, size: 20),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  /*border: Border.all(
                    width: 3.0,
                    color: Colors.grey,
                  ),*/
                  shape: BoxShape.circle,
                  /*boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10.0, // soften the shadow
                      spreadRadius: 5.0, //extend the shadow
                      offset: Offset(
                        0.0, // Move to right 5 horizontally
                        0.0, // Move to bottom 5 Vertically
                      ),
                    )
                  ],*/
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
                    'by Garena',
                    style: TextStyle(color: Colors.grey, fontSize: 15.0),
                  ),
                  Text(
                    'Price : 1,000 THB',
                    style: TextStyle(color: Colors.red, fontSize: 15.0),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rating: 4.80',
                        style: TextStyle(color: Colors.black, fontSize: 15.0),
                      ),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star_half, color: Colors.yellow, size: 20),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: douHeight,
                width: douWidth,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/valorant.png'),
                    fit: BoxFit.fill,
                  ),
                  /*border: Border.all(
                    width: 3.0,
                    color: Colors.grey,
                  ),*/
                  shape: BoxShape.circle,
                  /*boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10.0, // soften the shadow
                      spreadRadius: 5.0, //extend the shadow
                      offset: Offset(
                        0.0, // Move to right 5 horizontally
                        0.0, // Move to bottom 5 Vertically
                      ),
                    )
                  ],*/
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Valorant Mobile',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    'by Riot Games',
                    style: TextStyle(color: Colors.grey, fontSize: 15.0),
                  ),
                  Text(
                    'Price : 450 THB',
                    style: TextStyle(color: Colors.red, fontSize: 15.0),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rating: 4.50',
                        style: TextStyle(color: Colors.black, fontSize: 15.0),
                      ),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star_half, color: Colors.yellow, size: 20),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: douHeight,
                width: douWidth,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/pubgLogo.png'),
                    fit: BoxFit.fill,
                  ),
                  /*border: Border.all(
                    width: 3.0,
                    color: Colors.grey,
                  ),*/
                  shape: BoxShape.circle,
                  /*boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10.0, // soften the shadow
                      spreadRadius: 5.0, //extend the shadow
                      offset: Offset(
                        0.0, // Move to right 5 horizontally
                        0.0, // Move to bottom 5 Vertically
                      ),
                    )
                  ],*/
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'PUBG Mobile',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    'by Level Infinite',
                    style: TextStyle(color: Colors.grey, fontSize: 15.0),
                  ),
                  Text(
                    'Price : Free',
                    style: TextStyle(color: Colors.red, fontSize: 15.0),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rating: 4.80',
                        style: TextStyle(color: Colors.black, fontSize: 15.0),
                      ),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star, color: Colors.yellow, size: 20),
                      Icon(Icons.star_half, color: Colors.yellow, size: 20),
                    ],
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
