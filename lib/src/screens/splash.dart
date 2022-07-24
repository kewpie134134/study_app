import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2)).then((value) => handleTimeout());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          // スプラッシュアニメーション
          child: Image.asset('images/susajyuku_logo.png')),
    );
  }

  void handleTimeout() {
    // ユーザー登録画面へ（初回利用時のみ）
    // Navigator.of(context).pushReplacementNamed("/login");
    // メイン画面へ
    Navigator.of(context).pushReplacementNamed("/main");
  }
}
