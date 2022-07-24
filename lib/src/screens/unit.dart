import 'package:flutter/material.dart';

class UnitScreen extends StatelessWidget {
  const UnitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("単元選択")),
        body: Column(
          children: <Widget>[
            const Text('勉強したい単元を選んでね。'),
            Container(
              padding: const EdgeInsets.only(top: 32),
            ),
            SizedBox(
              width: double.infinity, //横幅
              height: 50, //高さ
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('XXXXXX'),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 32),
            ),
            SizedBox(
              width: double.infinity, //横幅
              height: 50, //高さ
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('XXXXXX'),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 32),
            ),
            SizedBox(
              width: double.infinity, //横幅
              height: 50, //高さ
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('XXXXXX'),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 32),
            ),
            SizedBox(
              width: double.infinity, //横幅
              height: 50, //高さ
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('XXXXXX'),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 32),
            ),
            SizedBox(
              width: double.infinity, //横幅
              height: 50, //高さ
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('XXXXXX'),
              ),
            ),
          ],
        ));
  }
}
