import 'package:flutter/material.dart';

class Movie extends StatefulWidget {
  const Movie({Key? key}) : super(key: key);
  @override
  State<Movie> createState() => _MovieState();
}

class _MovieState extends State<Movie> {
  double douHeight = 100.0; //ตัวแปล
  double douWidth = 100.0;
  double douNameSize = 20.0;
  double douDetailSize = 15.0;
  double douIconSize = 15.0;
  double douRateSize = 15.0;



  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical, //horizontal,
      children: [
        Row(children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(130, 10, 10, 20),
            child: Text(
              "Hot Movies of the year 2012-2022",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
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
                    image: AssetImage('assets/images/M01THOR.jpg'),
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
            Expanded(
              child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'THOR (Love and Thunder)',
                    style: TextStyle(fontSize: douNameSize, fontWeight: FontWeight.bold),
                  ),
                  Text(
                      'Rating: PG13',
                      style: TextStyle(fontSize: douDetailSize),
                    ),
                  Text(
                      'Genre: Action/Adventure',
                      style: TextStyle(fontSize: douDetailSize),
                    ),
                  Text(
                      'Director: Taika Waititi',
                      style: TextStyle(fontSize: douDetailSize),
                    ),
                ],
              ),
            ),
            ),
            Expanded(
              child: Padding(
              padding: const EdgeInsets.fromLTRB(5, 35, 10, 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Rotten Tomato: 64%',
                    style: TextStyle(color: Colors.red, fontSize: douDetailSize),
                  ),
                  Text(
                    'Audience: 77%',
                    style: TextStyle(color: Colors.green, fontSize: douDetailSize),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Average: 3.50',
                        style: TextStyle(color: Colors.black, fontSize: douRateSize),
                      ),
                      Icon(Icons.star, color: Colors.yellow, size: douIconSize),
                      Icon(Icons.star, color: Colors.yellow, size: douIconSize),
                      Icon(Icons.star, color: Colors.yellow, size: douIconSize),
                      Icon(Icons.star_half, color: Colors.yellow, size: douIconSize),
                    ],
                  ),
                ],
              ),
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
                    image: AssetImage('assets/images/M02GOT.jpg'),
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
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Game of Throne',
                      style: TextStyle(fontSize: douNameSize, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Rating: PG18',
                      style: TextStyle(fontSize: douDetailSize),
                    ),
                    Text(
                      'Genre: Deama',
                      style: TextStyle(fontSize: douDetailSize),
                    ),
                    Text(
                      'Director: Weiss',
                      style: TextStyle(fontSize: douDetailSize),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 35, 10, 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rotten Tomato: 89%',
                      style:
                          TextStyle(color: Colors.red, fontSize: douDetailSize),
                    ),
                    Text(
                      'Audience: 85%',
                      style: TextStyle(
                          color: Colors.green, fontSize: douDetailSize),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Average: 4.45',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: douRateSize),
                        ),
                        Icon(Icons.star,
                            color: Colors.yellow, size: douIconSize),
                        Icon(Icons.star,
                            color: Colors.yellow, size: douIconSize),
                        Icon(Icons.star,
                            color: Colors.yellow, size: douIconSize),
                        Icon(Icons.star,
                            color: Colors.yellow, size: douIconSize),
                        Icon(Icons.star_half,
                            color: Colors.yellow, size: douIconSize),
                      ],
                    ),
                  ],
                ),
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
                    image: AssetImage('assets/images/M03SPR.jpg'),
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
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Saving Private Ryan',
                      style: TextStyle(fontSize: douNameSize, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Rating: PG18',
                      style: TextStyle(fontSize: douDetailSize),
                    ),
                    Text(
                      'Genre: War/History',
                      style: TextStyle(fontSize: douDetailSize),
                    ),
                    Text(
                      'Director: Steven Spielberg',
                      style: TextStyle(fontSize: douDetailSize),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 35, 10, 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rotten Tomato: 94%',
                      style:
                          TextStyle(color: Colors.red, fontSize: douDetailSize),
                    ),
                    Text(
                      'Audience: 95%',
                      style: TextStyle(
                          color: Colors.green, fontSize: douDetailSize),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Average: 4.80',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: douRateSize),
                        ),
                        Icon(Icons.star,
                            color: Colors.yellow, size: douIconSize),
                        Icon(Icons.star,
                            color: Colors.yellow, size: douIconSize),
                        Icon(Icons.star,
                            color: Colors.yellow, size: douIconSize),
                        Icon(Icons.star,
                            color: Colors.yellow, size: douIconSize),
                        Icon(Icons.star_half,
                            color: Colors.yellow, size: douIconSize),
                      ],
                    ),
                  ],
                ),
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
                    image: AssetImage('assets/images/M04Midway.png'),
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
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Midway',
                      style: TextStyle(fontSize: douNameSize, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Rating: PG13',
                      style: TextStyle(fontSize: douDetailSize),
                    ),
                    Text(
                      'Genre: War/History',
                      style: TextStyle(fontSize: douDetailSize),
                    ),
                    Text(
                      'Director: Roland Emmerich',
                      style: TextStyle(fontSize: douDetailSize),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 35, 10, 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rotten Tomato: 42%',
                      style:
                          TextStyle(color: Colors.red, fontSize: douDetailSize),
                    ),
                    Text(
                      'Audience: 92%',
                      style: TextStyle(
                          color: Colors.green, fontSize: douDetailSize),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Average: 3.20',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: douRateSize),
                        ),
                        Icon(Icons.star,
                            color: Colors.yellow, size: douIconSize),
                        Icon(Icons.star,
                            color: Colors.yellow, size: douIconSize),
                        Icon(Icons.star,
                            color: Colors.yellow, size: douIconSize),
                        Icon(Icons.star_half,
                            color: Colors.yellow, size: douIconSize),
                      ],
                    ),
                  ],
                ),
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
                    image: AssetImage('assets/images/M05GP.jpg'),
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
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Kungfu Panda',
                      style: TextStyle(fontSize: douNameSize, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Rating: PG-',
                      style: TextStyle(fontSize: douDetailSize),
                    ),
                    Text(
                      'Genre: Kids & Family',
                      style: TextStyle(fontSize: douDetailSize),
                    ),
                    Text(
                      'Director: Jennifer Yuh Nelson',
                      style: TextStyle(fontSize: douDetailSize),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 35, 10, 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rotten Tomato: 86%',
                      style:
                          TextStyle(color: Colors.red, fontSize: douDetailSize),
                    ),
                    Text(
                      'Audience: 78%',
                      style: TextStyle(
                          color: Colors.green, fontSize: douDetailSize),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Average: 4.10',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: douRateSize),
                        ),
                        Icon(Icons.star,
                            color: Colors.yellow, size: douIconSize),
                        Icon(Icons.star,
                            color: Colors.yellow, size: douIconSize),
                        Icon(Icons.star,
                            color: Colors.yellow, size: douIconSize),
                        Icon(Icons.star,
                            color: Colors.yellow, size: douIconSize),
                        Icon(Icons.star_half,
                            color: Colors.yellow, size: douIconSize),
                      ],
                    ),
                  ],
                ),
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
                    image: AssetImage('assets/images/M06Doraemon.jpg'),
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
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Doraemon',
                      style: TextStyle(fontSize: douNameSize, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Rating: PG-',
                      style: TextStyle(fontSize: douDetailSize),
                    ),
                    Text(
                      'Genre: Kids & Family',
                      style: TextStyle(fontSize: douDetailSize),
                    ),
                    Text(
                      'Director: Takashi Yamazaki',
                      style: TextStyle(fontSize: douDetailSize),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 35, 10, 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rotten Tomato: 50%',
                      style:
                          TextStyle(color: Colors.red, fontSize: douDetailSize),
                    ),
                    Text(
                      'Audience: 100%',
                      style: TextStyle(
                          color: Colors.green, fontSize: douDetailSize),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Average: 3.50',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: douRateSize),
                        ),
                        Icon(Icons.star,
                            color: Colors.yellow, size: douIconSize),
                        Icon(Icons.star,
                            color: Colors.yellow, size: douIconSize),
                        Icon(Icons.star,
                            color: Colors.yellow, size: douIconSize),
                        Icon(Icons.star_half,
                            color: Colors.yellow, size: douIconSize),
                      ],
                    ),
                  ],
                ),
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
                    image: AssetImage('assets/images/M07Pubphe.jpg'),
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
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Love Destiny',
                      style: TextStyle(fontSize: douNameSize, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Rating: PG-',
                      style: TextStyle(fontSize: douDetailSize),
                    ),
                    Text(
                      'Genre: Drama/History',
                      style: TextStyle(fontSize: douDetailSize),
                    ),
                    Text(
                      'Director: Pawat Panungkasiri',
                      style: TextStyle(fontSize: douDetailSize),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 35, 10, 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rotten Tomato: 90%',
                      style:
                          TextStyle(color: Colors.red, fontSize: douDetailSize),
                    ),
                    Text(
                      'Audience: 78%',
                      style: TextStyle(
                          color: Colors.green, fontSize: douDetailSize),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Average: 4.75',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: douRateSize),
                        ),
                        Icon(Icons.star,
                            color: Colors.yellow, size: douIconSize),
                        Icon(Icons.star,
                            color: Colors.yellow, size: douIconSize),
                        Icon(Icons.star,
                            color: Colors.yellow, size: douIconSize),
                        Icon(Icons.star,
                            color: Colors.yellow, size: douIconSize),
                        Icon(Icons.star_half,
                            color: Colors.yellow, size: douIconSize),
                      ],
                    ),
                  ],
                ),
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
                    image: AssetImage('assets/images/M08RodFifa.jpg'),
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
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bangkok Traffic Love Story',
                      style: TextStyle(fontSize: douNameSize, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Rating: PG-',
                      style: TextStyle(fontSize: douDetailSize),
                    ),
                    Text(
                      'Genre: Drama/Commedy',
                      style: TextStyle(fontSize: douDetailSize),
                    ),
                    Text(
                      'Director: Adisorn Trisirikasem',
                      style: TextStyle(fontSize: douDetailSize),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 35, 10, 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rotten Tomato: 90%',
                      style:
                          TextStyle(color: Colors.red, fontSize: douDetailSize),
                    ),
                    Text(
                      'Audience: 95%',
                      style: TextStyle(
                          color: Colors.green, fontSize: douDetailSize),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Average: 4.60',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: douRateSize),
                        ),
                        Icon(Icons.star,
                            color: Colors.yellow, size: douIconSize),
                        Icon(Icons.star,
                            color: Colors.yellow, size: douIconSize),
                        Icon(Icons.star,
                            color: Colors.yellow, size: douIconSize),
                        Icon(Icons.star,
                            color: Colors.yellow, size: douIconSize),
                        Icon(Icons.star_half,
                            color: Colors.yellow, size: douIconSize),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
