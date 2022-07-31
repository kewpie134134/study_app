import 'package:flutter/material.dart';

List<String> units = [
  "AAAAA",
  "BBBBB",
  "CCCCC",
  "DDDDD",
  "EEEEE",
  "FFFFF",
  "GGGGG",
];

class UnitScreen extends StatelessWidget {
  const UnitScreen({Key? key, required this.subject}) : super(key: key);
  final String subject;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("$subject: 単元選択")),
        body: Column(
          children: _makeWidgets(context),
        ));
  }
}

List<Widget> _makeWidgets(BuildContext context) {
  var contentWidgets = <Widget>[];

  contentWidgets.add(const Text('勉強したい単元を選んでね。'));
  for (final unit in units) {
    contentWidgets.add(Container(
      padding: const EdgeInsets.only(top: 32),
    ));
    contentWidgets.add(
      SizedBox(
        width: double.infinity, //横幅
        height: 50, //高さ
        child: ElevatedButton(
          onPressed: () {
            // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            //   return UnitScreen(subject: unit);
            // }));
          },
          child: Text(unit.toString()),
        ),
      ),
    );
  }
  return contentWidgets;
}
