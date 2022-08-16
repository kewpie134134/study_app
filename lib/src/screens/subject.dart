import 'package:flutter/material.dart';

List<String> subjects = [
  "国語",
  "数学",
  "英語",
  "理科",
  "社会",
];

List<String> japaneseUnits = [
  "AAAAA",
  "AAAAA",
  "AAAAA",
  "AAAAA",
  "AAAAA",
];
List<String> mathUnits = [
  "BBBBB",
  "BBBBB",
  "BBBBB",
  "BBBBB",
  "BBBBB",
];
List<String> englishUnits = [
  "CCCCC",
  "CCCCC",
  "CCCCC",
  "CCCCC",
  "CCCCC",
];
List<String> scienceUnits = [
  "DDDDD",
  "DDDDD",
  "DDDDD",
  "DDDDD",
  "DDDDD",
];
List<String> socialUnits = [
  "EEEEE",
  "EEEEE",
  "EEEEE",
  "EEEEE",
  "EEEEE",
];

class SubjectScreeen extends StatelessWidget {
  const SubjectScreeen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var contentWidgets = _makeWidgets(context);

    return Scaffold(
        appBar: AppBar(title: const Text("教科選択")),
        body: Column(children: contentWidgets));
  }
}

List<Widget> _makeWidgets(BuildContext context) {
  var contentWidgets = <Widget>[];

  contentWidgets.add(const Text('勉強したい教科を選んでね。'));
  for (final subject in subjects) {
    contentWidgets.add(
        ExpansionTile(title: Text(subject.toString()), children: [])

        // SizedBox(
        //   width: double.infinity, //横幅
        //   height: 50, //高さ
        //   child: ElevatedButton(
        //     onPressed: () {
        //       Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        //         return UnitScreen(subject: subject);
        //       }));
        //     },
        //     child: Text(subject.toString()),
        //   ),
        // ),
        );
  }
  return contentWidgets;
}
