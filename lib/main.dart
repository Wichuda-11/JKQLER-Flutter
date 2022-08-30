import 'package:flutter/material.dart';
import 'package:flutter_application_hello/home_page.dart';
import 'package:flutter_application_hello/count_one_page.dart';
import 'package:flutter_application_hello/count_ten_page.dart';
import 'package:flutter_application_hello/nu_page.dart';
import 'package:flutter_application_hello/layout_row_column.dart';
import 'package:flutter_application_hello/layout_stack.dart';
import 'package:flutter_application_hello/layout_expand.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //remove debug sign
      title: "Jib's App",
      theme: ThemeData(
        primarySwatch: Colors.purple, //set theme color
      ),
      home: const MainPage(title: "Jib's App"),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int intCurrentIndex = 0;
  String strWelcome = "Hello"; //จัดลำดับหน้าได้ 5 มากสุด
  final screens = [
    HomePage(title: 'Home'),
    /*CountTen(
      title: 'Count Ten',
    ),
    CountOne(
      title: 'Count One',
    ),
    NuPage(title: 'Home'),*/
    RowColumnPage(),
    StackPage(),
    ExpandedPage(),
    CountOne(title: 'Count One'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.earbuds),
            color: Colors.white,
          ),
        ],
      ),
      body: screens[intCurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: intCurrentIndex, //ปรับค่าหน้าจอsetState
          onTap: (index) => setState(() {
                intCurrentIndex = index;
              }),
          backgroundColor: Colors.pink,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.yellow,
          iconSize: 30,
          selectedFontSize: 14,
          unselectedFontSize: 10,
          //showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            /*BottomNavigationBarItem(
                icon: Icon(Icons.timer_10_select), label: 'Add 10'),*/
            /*BottomNavigationBarItem(
                icon: Icon(Icons.exposure_plus_1), label: 'Add 1'),*/
            /*BottomNavigationBarItem(icon: Icon(Icons.cabin), label: 'Nu'),*/
            BottomNavigationBarItem(icon: Icon(Icons.recycling), label: 'Column and Row'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: 'Stack'),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_add), label: 'Expanded'),
            BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz), label: 'Top Buttons'),    
          ]),
    );
  }
}
