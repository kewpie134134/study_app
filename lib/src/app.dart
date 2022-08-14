import 'package:flutter/cupertino.dart';
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
  int _selectedIndex = 3;
  // int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
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
                tooltip: "ミニゲームページ"),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: '設定',
              tooltip: "設定ページ",
            ),
          ],
          onTap: _onItemTapped, // 無くても動く
          currentIndex: _selectedIndex, // 無くても動く
        ),
        tabBuilder: (BuildContext context, int index) {
          return CupertinoTabView(builder: (context) {
            switch (index) {
              case 0:
                // ホームページ
                return const CupertinoPageScaffold(
                  child: HomeScreeen(),
                );
              case 1:
                // 教科ページ
                return const CupertinoPageScaffold(
                  child: SubjectScreeen(),
                );
              case 2:
                // ロードマップページ
                return const CupertinoPageScaffold(
                  child: LoadmapScreeen(),
                );
              case 3:
                // ミニゲームページ
                return const CupertinoPageScaffold(
                  child: GameScreeen(),
                );
              case 4:
                // 設定ページ
                return const CupertinoPageScaffold(
                  child: SettingsScreeen(),
                );
              default:
                // デフォルトはホームページ
                return const CupertinoPageScaffold(
                  child: HomeScreeen(),
                );
            }
          });
        });
  }
}
