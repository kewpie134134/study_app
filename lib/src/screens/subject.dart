import 'package:flutter/material.dart';
import 'package:study_app/src/screens/unit.dart';

List<String> subjects = [
  "国語",
  "数学",
  "英語",
  "理科",
  "社会",
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
    contentWidgets.add(Container(
      padding: const EdgeInsets.only(top: 32),
    ));
    contentWidgets.add(
      SizedBox(
        width: double.infinity, //横幅
        height: 50, //高さ
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return UnitScreen(subject: subject);
            }));
          },
          child: Text(subject.toString()),
        ),
      ),
    );
  }
  return contentWidgets;
}
