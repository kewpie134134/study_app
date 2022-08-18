import 'package:flutter/material.dart';
import 'package:study_app/src/screens/studying.dart';

class UnitScreen extends StatelessWidget {
  const UnitScreen({Key? key, required this.unit}) : super(key: key);
  final String unit;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(unit)),
      body: Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              ListTile(
                leading: const Icon(Icons.arrow_drop_down_circle),
                title: Text(unit),
                subtitle: Text(
                  "サブタイトル",
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                    "説明書き？XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
                    style: TextStyle(color: Colors.black.withOpacity(0.6))),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text("選択画面に戻る")),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return const StudyingScreeen();
                          },
                        ));
                      },
                      child: const Text("学習を開始する"))
                ],
              )
            ],
          )),
    );
  }
}
