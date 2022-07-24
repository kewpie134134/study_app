import 'package:flutter/material.dart';

class SubjectScreeen extends StatelessWidget {
  const SubjectScreeen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("教科選択")),
        body: Column(
          children: <Widget>[
            const Text('勉強したい教科を選んでね。'),
            Container(
              padding: const EdgeInsets.only(top: 32),
            ),
            SizedBox(
              width: double.infinity, //横幅
              height: 50, //高さ
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/unit");
                },
                child: const Text('国語'),
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
                child: const Text('数学'),
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
                child: const Text('英語'),
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
                child: const Text('理科'),
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
                child: const Text('社会'),
              ),
            ),
          ],
        ));
  }
}
