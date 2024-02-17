import 'package:flutter/material.dart';
import 'package:study_app/src/screens/loadmapDetail.dart';

/// ロードマップの要素数
const int loadmapLength = 23;

/// 繰り返されるウィジェットを用意する
List<Widget> _makeWidgets(
    BuildContext context, List itemList, double containerSize) {
  var contentWidgets = <Widget>[];

  contentWidgets.add(const Text("ロードマップ"));
  for (final list in itemList) {
    var tmpWidgets = <Widget>[];
    for (int i = 0; i < list.length; i++) {
      if (list[i] == loadmapLength + 1) {
        /// Goal の場合、コンテンツの色を変えて矢印は追加しない
        tmpWidgets.add(_makeLoadmapIcon(
            context, list[i].toString(), containerSize, Colors.red));
      } else if (list[i] == 0) {
        /// Start の場合、コンテンツの色を変えて矢印は追加しない
        tmpWidgets.add(_makeLoadmapIcon(
            context, list[i].toString(), containerSize, Colors.green));
        tmpWidgets.add(Icon(
          Icons.arrow_forward,
          size: containerSize,
        ));
      } else {
        tmpWidgets.add(_makeLoadmapIcon(
            context, list[i].toString(), containerSize, Colors.blue));
        tmpWidgets.add(Icon(
          Icons.arrow_forward,
          size: containerSize,
        ));
      }
    }
    contentWidgets.add(Row(children: tmpWidgets));
    contentWidgets.add(Icon(
      Icons.arrow_upward,
      size: containerSize,
    ));
  }
  return contentWidgets;
}

/// コンテンツの数に応じて表示するロードマップの並びを作成
/// Start と Goal のロードマップもここで含める
List<dynamic> loadmapList(int loadmapLength) {
  int loadmapFullLength = loadmapLength + 2;
  var itemList = [];

  var reversedList =
      (List.generate(loadmapFullLength, (i) => i).reversed.toList());
  var loopIndex = 0;
  for (int i = 0; i < (loadmapFullLength) / 5; i++) {
    if (reversedList.length > loopIndex + 5) {
      itemList.add(reversedList.sublist(loopIndex, loopIndex + 5));
      loopIndex += 5;
    } else {
      itemList.add(reversedList.sublist(loopIndex));
    }
    if (i % 2 == 0) {
      itemList[i].sort();
    }
  }
  return itemList;
}

/// コンテナーをクリックした際に loadmapDetailScreen に遷移させる処理を作成
MouseRegion _makeLoadmapIcon(BuildContext context, String listText,
    double containerSize, Color containerColor) {
  return MouseRegion(
    cursor: SystemMouseCursors.click,
    child: GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return LoadmapDetailScreen(loadmapDetail: listText); // ほんとは動的に変更したい
        }));
      },
      child: Container(
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: containerColor),
          width: containerSize,
          height: containerSize),
    ),
  );
}

class LoadmapScreeen extends StatelessWidget {
  const LoadmapScreeen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    /// 表示されるコンテンツの大きさ（画面サイズに応じて調整）
    final double containerSize = size.width / 10;

    return Scaffold(
      appBar: AppBar(title: const Text("ロードマップ")),
      body: SingleChildScrollView(
          child: Column(
              children: _makeWidgets(
                  context, loadmapList(loadmapLength), containerSize))),
    );
  }
}
