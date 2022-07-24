import 'package:flutter/material.dart';
import 'package:study_app/src/screens/home.dart';
import 'package:study_app/src/screens/loadmap.dart';
import 'package:study_app/src/screens/settings.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = "Study App";

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  static const _screens = [HomeScreeen(), LoadmapScreeen(), SettingsScreeen()];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static final bottomItems = <BottomNavigationBarItem>[
    const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      activeIcon: Icon(Icons.home),
      label: "ホーム",
      tooltip: "ホームページ",
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.map),
      activeIcon: Icon(Icons.map),
      label: "ロードマップ",
      tooltip: "ロードマップページ",
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      activeIcon: Icon(Icons.settings),
      label: '設定',
      tooltip: "設定ページ",
    ),
  ];

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
            activeIcon: Icon(Icons.home),
            label: "ホーム",
            tooltip: "ホームページ",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            activeIcon: Icon(Icons.map),
            label: "ロードマップ",
            tooltip: "ロードマップページ",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            activeIcon: Icon(Icons.settings),
            label: '設定',
            tooltip: "設定ページ",
          ),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
