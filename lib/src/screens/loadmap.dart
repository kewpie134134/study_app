import 'package:flutter/material.dart';
import 'package:study_app/src/screens/loadmapDetail.dart';

/// ロードマップの要素数
const int loadmapLength = 31;

/// ロードマップアイコンの横一列の長さ
const int rowLength = 5;

class LoadmapScreeen extends StatelessWidget {
  const LoadmapScreeen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    /// 表示されるコンテンツの大きさ（画面サイズに応じて調整）
    final double containerSize = size.width / (rowLength * 2 - 1);

    return Scaffold(
      appBar: AppBar(title: const Text("ロードマップ")),
      body: SingleChildScrollView(
          child: Column(
              children: _makeWidgets(
                  context, _loadmapList(loadmapLength), containerSize))),
    );
  }
}

/// 繰り返されるウィジェットを用意する
List<Widget> _makeWidgets(
    BuildContext context, List itemList, double containerSize) {
  var contentWidgets = <Widget>[];

  // 行が偶数・奇数を判定するためのインデックス
  var listIndex = 0;

  contentWidgets.add(const Text("ロードマップ"));
  for (final list in itemList) {
    var tmpWidgets = <Widget>[];

    // リストの長さ調整
    if (listIndex.isEven && list.length < rowLength) {
      for (int i = 0; i < rowLength - list.length + 1; i++) {
        list.insert(0, -1);
      }
    }

    for (int i = 0; i < list.length; i++) {
      if (list[i] == loadmapLength + 1) {
        /// Goal の場合、コンテンツの色を変えて矢印は表示させない
        tmpWidgets.add(Column(
          children: [
            Icon(
              Icons.arrow_upward,
              size: containerSize,
              color: Colors.black.withOpacity(0.0),
            ),
            _makeLoadmapIcon(
                context, list[i].toString(), containerSize, Colors.red)
          ],
        ));
      } else if (list[i] == 0) {
        /// Start の場合、コンテンツの色を変える
        tmpWidgets.add(Column(
          children: [
            // 偶数行かつ最後のアイコンの場合、上矢印を表示させる
            (listIndex.isEven && list[i] == list.last)
                ? Icon(Icons.arrow_upward, size: containerSize)
                // 奇数行かつ最初のアイコンの場合、上矢印を表示させる
                : (listIndex.isOdd && list[i] == list[0])
                    ? Icon(Icons.arrow_upward, size: containerSize)
                    // それ以外の場合、上矢印は表示させない
                    : Icon(
                        Icons.arrow_upward,
                        size: containerSize,
                        color: Colors.black.withOpacity(0.0),
                      ),
            _makeLoadmapIcon(
                context, list[i].toString(), containerSize, Colors.green)
          ],
        ));
        if (listIndex.isEven) {
          // 偶数行の場合、右矢印を表示させる
          tmpWidgets.add(Column(
            children: [
              Icon(
                Icons.arrow_upward,
                size: containerSize,
                color: Colors.black.withOpacity(0.0),
              ),
              Icon(
                Icons.arrow_forward,
                size: containerSize,
              )
            ],
          ));
        } else {
          // 奇数行の場合、何も表示させない
          tmpWidgets.add(const SizedBox());
        }

        /// 表示させないコンテナの場合、透明アイコンを設定する
      } else if (list[i] == -1) {
        tmpWidgets.add(Column(
          children: [
            Icon(
              Icons.arrow_upward,
              size: containerSize,
              color: Colors.black.withOpacity(0.0),
            ),
          ],
        ));
        tmpWidgets.add(Column(
          children: [
            Icon(
              Icons.arrow_upward,
              size: containerSize,
              color: Colors.black.withOpacity(0.0),
            ),
          ],
        ));

        /// その他、一般コンテナの場合
      } else {
        tmpWidgets.add(Column(
          children: [
            (listIndex.isEven && list[i] == list.last)
                // 偶数行かつ最後のコンテナの場合、上矢印を表示させる
                ? Icon(Icons.arrow_upward, size: containerSize)
                : (listIndex.isOdd && list[i] == list[0])
                    // 奇数行かつ最初のコンテナの場合、上矢印を表示させる
                    ? Icon(Icons.arrow_upward, size: containerSize)
                    // それ以外は何も表示させない（透明アイコン）
                    : Icon(
                        Icons.arrow_upward,
                        size: containerSize,
                        color: Colors.black.withOpacity(0.0),
                      ),
            _makeLoadmapIcon(
                context, list[i].toString(), containerSize, Colors.blue)
          ],
        ));
        if (list[i] != list.last) {
          // 最後のコンテナでない場合は、右or左の矢印を表示させる
          tmpWidgets.add(Column(
            children: [
              Icon(
                Icons.arrow_back,
                size: containerSize,
                color: Colors.black.withOpacity(0.0),
              ),
              listIndex.isEven
                  // 右矢印を表示させる
                  ? Icon(
                      Icons.arrow_forward,
                      size: containerSize,
                    )
                  // 左矢印を表示させる
                  : Icon(
                      Icons.arrow_back,
                      size: containerSize,
                    )
            ],
          ));
        }
      }
    }

    // アイコンと矢印を横に並べる
    contentWidgets.add(Row(children: tmpWidgets));

    // インデックスを追加する
    listIndex += 1;
  }
  return contentWidgets;
}

/// コンテンツの数に応じて表示するロードマップの並びを作成
/// Start と Goal のロードマップもここで含める
List<dynamic> _loadmapList(int loadmapLength) {
  int loadmapFullLength = loadmapLength + 2;
  var itemList = [];

  var reversedList =
      (List.generate(loadmapFullLength, (i) => i).reversed.toList());
  var loopIndex = 0;
  for (int i = 0; i < (loadmapFullLength) / rowLength; i++) {
    if (reversedList.length > loopIndex + rowLength) {
      itemList.add(reversedList.sublist(loopIndex, loopIndex + rowLength));
      loopIndex += rowLength;
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
