import 'package:flutter/material.dart';

class LoadmapDetailScreen extends StatelessWidget {
  const LoadmapDetailScreen({Key? key, required this.loadmapDetail})
      : super(key: key);
  final String loadmapDetail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(loadmapDetail)),
      body: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.arrow_drop_down_circle),
              title: Text(loadmapDetail),
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
                  "冒険の書詳細など XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                )),
            ButtonBar(
              alignment: MainAxisAlignment.start,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text("前画面に戻る")),
                TextButton(onPressed: () {}, child: const Text("XXXXXXXX"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
