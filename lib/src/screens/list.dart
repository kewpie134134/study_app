import 'package:flutter/material.dart';

class ListScreeen extends StatelessWidget {
  const ListScreeen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("教科")),
        body: Column(
          children: <Widget>[
            const Text('勉強したい教科を選択してください。'),
            Container(
              padding: const EdgeInsets.only(top: 32),
            ),
            SizedBox(
              width: double.infinity, //横幅
              height: 50, //高さ
              child: ElevatedButton(
                onPressed: () {},
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
