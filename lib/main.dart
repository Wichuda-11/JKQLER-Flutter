import 'package:flutter/material.dart';
import 'package:flutter_application_hello/home_page.dart';
import 'package:flutter_application_hello/count_one_page.dart';
import 'package:flutter_application_hello/count_ten_page.dart';
import 'package:flutter_application_hello/nu_page.dart';
import 'package:flutter_application_hello/layout_row_column.dart';
import 'package:flutter_application_hello/layout_stack.dart';
import 'package:flutter_application_hello/layout_expand.dart';
import 'package:flutter_application_hello/layout_top_buttons.dart';
import 'package:flutter_application_hello/form_login_page.dart';
import 'package:flutter_application_hello/installment.dart';
import 'package:flutter_application_hello/Image_listview_page.dart';
import 'package:flutter_application_hello/Image_games_page.dart';
import 'package:flutter_application_hello/saving.dart';
import 'package:flutter_application_hello/Image_movie_page.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //remove debug sign

      title: "Final Exam W.Wichuda",
      theme: ThemeData(
        primarySwatch: Colors.blue, //set theme color
      ),
      
      home: const MainPage(title: "Final Exam W.Wichuda"),
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
    HomePage(),
    /*CountTen(
      title: 'Count Ten',
    ),
    CountOne(
      title: 'Count One',
    ),
    NuPage(title: 'Home'),
    RowColumnPage(),
    StackPage(),
    ExpandedPage(),
    TopFloatIcon(),
    LoginPage(),
    InstallPage(),
    Listview(),
    Games(),*/
    SavingPage(),
    Movie(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text(widget.title),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
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
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
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
            /*BottomNavigationBarItem(icon: Icon(Icons.recycling), label: 'Column and Row'),*/
            /*BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: 'Stack'),*/
            /*BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_add), label: 'Expanded'),*/
            /*BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz), label: 'Top Buttons'),*/
            /*BottomNavigationBarItem(
                icon: Icon(Icons.login), label: 'Log in'),*/
            /*BottomNavigationBarItem(icon: Icon(Icons.attach_money_outlined), label: 'Motorcycle Installment'),*/
            /*BottomNavigationBarItem(icon: Icon(Icons.image), label: 'ListView'),*/
            /*BottomNavigationBarItem(icon: Icon(Icons.sports_esports), label: 'Games'),*/
            BottomNavigationBarItem(
                icon: Icon(Icons.savings), label: 'Saving'),
            BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'Movies'),    
          ]),
    );
  }
}
