import 'package:flutter/material.dart';
import 'package:study_app/src/screens/game.dart';
import 'package:study_app/src/screens/home.dart';
import 'package:study_app/src/screens/subject.dart';
import 'package:study_app/src/screens/loadmap.dart';
import 'package:study_app/src/screens/login.dart';
import 'package:study_app/src/screens/settings.dart';
import 'package:study_app/src/screens/splash.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = "Study App";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "NotoSansJP",
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const SplashScreen(),
        "/login": (context) => const LoginScreen(),
        "/main": (context) => const MyStatefulWidget(),
      },
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  static const _screens = [
    HomeScreeen(),
    SubjectScreeen(),
    LoadmapScreeen(),
    GameScreeen(),
    SettingsScreeen()
  ];
  int _selectedIndex = 1;
  // int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "ホーム",
            tooltip: "ホームページ",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "教科",
            tooltip: "教科ページ",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: "ロードマップ",
            tooltip: "ロードマップページ",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_esports),
            label: "ミニゲーム",
            tooltip: "ミニゲームページ",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '設定',
            tooltip: "設定ページ",
          ),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
