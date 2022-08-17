import 'package:flutter/material.dart';
import 'package:study_app/src/screens/unit.dart';

class SubjectScreeen extends StatelessWidget {
  const SubjectScreeen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var contentWidgets = _makeWidgets(context);

    return Scaffold(
        appBar: AppBar(title: const Text("教科選択")),
        body: SingleChildScrollView(
          child: Column(children: contentWidgets),
        ));
  }
}

List<Widget> _makeWidgets(BuildContext context) {
  var contentWidgets = <Widget>[];

  contentWidgets.add(const Text('勉強したい教科を選んでね。'));
  subjects.asMap().forEach((int i, String subject) {
    List<Widget> widgetUnit = [];
    for (var unit in units[i]) {
      // ListTile でタイルを作成
      widgetUnit.add(ListTile(
        title: Text(unit),
        subtitle: const Text("サブタイトル"),
        leading: const Icon(Icons.school),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return UnitScreen(unit: unit); // ほんとは動的に変更したい
          }));
        },
        onLongPress: () {},
        trailing: const Icon(Icons.note),
        // tileColor: Colors.white,
      ));
    }
    contentWidgets.add(
        ExpansionTile(title: Text(subject.toString()), children: widgetUnit));
  });
  return contentWidgets;
}

List<String> subjects = [
  "国語",
  "数学",
  "英語",
  "理科",
  "社会",
];

List<List<String>> units = [
  [
    "AAAAA",
    "AAAAA",
    "AAAAA",
    "AAAAA",
    "AAAAA",
  ],
  [
    "BBBBB",
    "BBBBB",
    "BBBBB",
    "BBBBB",
    "BBBBB",
  ],
  [
    "CCCCC",
    "CCCCC",
    "CCCCC",
    "CCCCC",
    "CCCCC",
  ],
  [
    "DDDDD",
    "DDDDD",
    "DDDDD",
    "DDDDD",
    "DDDDD",
  ],
  [
    "EEEEE",
    "EEEEE",
    "EEEEE",
    "EEEEE",
    "EEEEE",
  ],
];
