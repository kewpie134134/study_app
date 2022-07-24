import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ユーザー登録")),
      body: Center(
          child: Form(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(
                height: 24.0,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(), labelText: "ユーザー名"),
              ),
              const SizedBox(
                height: 24.0,
              ),
              TextFormField(
                maxLength: 30,
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(), labelText: "パスワード"),
              ),
              TextFormField(
                maxLength: 30,
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(), labelText: "パスワード（確認）"),
              ),
              const SizedBox(
                height: 24.0,
              ),
              Center(
                child: ElevatedButton(
                  child: const Text("ユーザー登録"),
                  onPressed: () {
                    // ログイン処理
                    // ホーム画面へ
                    Navigator.of(context).pushReplacementNamed("/main");
                  },
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
