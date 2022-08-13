import 'package:flutter/material.dart';

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
        tmpWidgets.add(Container(
            decoration:
                const BoxDecoration(shape: BoxShape.circle, color: Colors.red),
            width: containerSize,
            height: containerSize));
      } else if (list[i] == 0) {
        /// Start の場合、コンテンツの色を変えて矢印は追加しない
        tmpWidgets.add(Container(
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.green),
            width: containerSize,
            height: containerSize));
        tmpWidgets.add(Icon(
          Icons.arrow_forward,
          size: containerSize,
        ));
      } else {
        tmpWidgets.add(Container(
            decoration:
                const BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
            width: containerSize,
            height: containerSize));
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
                  context, loadmapList(loadmapLength), containerSize)
              // Row(
              //   children: <Widget>[
              //     Container(
              //         decoration: const BoxDecoration(
              //             shape: BoxShape.circle, color: Colors.blue),
              //         width: containerSize,
              //         height: containerSize),
              //     Icon(
              //       Icons.arrow_forward,
              //       size: containerSize,
              //     ),
              //     Container(
              //         decoration: const BoxDecoration(
              //             shape: BoxShape.circle, color: Colors.red),
              //         width: containerSize,
              //         height: containerSize),
              //     Icon(
              //       Icons.arrow_forward,
              //       size: containerSize,
              //     ),
              //     Container(
              //         decoration: const BoxDecoration(
              //             shape: BoxShape.circle, color: Colors.blue),
              //         width: containerSize,
              //         height: containerSize),
              //     Icon(
              //       Icons.arrow_forward,
              //       size: containerSize,
              //     ),
              //     Container(
              //         decoration: const BoxDecoration(
              //             shape: BoxShape.circle, color: Colors.red),
              //         width: containerSize,
              //         height: containerSize),
              //     Icon(
              //       Icons.arrow_forward,
              //       size: containerSize,
              //     ),
              //     Container(
              //         decoration: const BoxDecoration(
              //             shape: BoxShape.circle, color: Colors.blue),
              //         width: containerSize,
              //         height: containerSize),
              //   ],
              // ),
              // Row(children: <Widget>[
              //   Icon(
              //     Icons.arrow_upward,
              //     size: containerSize,
              //   )
              // ]),
              // Row(
              //   children: <Widget>[
              //     Container(
              //         decoration: const BoxDecoration(
              //             shape: BoxShape.circle, color: Colors.blue),
              //         width: containerSize,
              //         height: containerSize),
              //     Icon(
              //       Icons.arrow_back,
              //       size: containerSize,
              //     ),
              //     Container(
              //         decoration: const BoxDecoration(
              //             shape: BoxShape.circle, color: Colors.red),
              //         width: containerSize,
              //         height: containerSize),
              //     Icon(
              //       Icons.arrow_back,
              //       size: containerSize,
              //     ),
              //     Container(
              //         decoration: const BoxDecoration(
              //             shape: BoxShape.circle, color: Colors.blue),
              //         width: containerSize,
              //         height: containerSize),
              //     Icon(
              //       Icons.arrow_back,
              //       size: containerSize,
              //     ),
              //     Container(
              //         decoration: const BoxDecoration(
              //             shape: BoxShape.circle, color: Colors.red),
              //         width: containerSize,
              //         height: containerSize),
              //     Icon(
              //       Icons.arrow_back,
              //       size: containerSize,
              //     ),
              //     Container(
              //         decoration: const BoxDecoration(
              //             shape: BoxShape.circle, color: Colors.blue),
              //         width: containerSize,
              //         height: containerSize),
              //   ],
              // ),
              // Row(children: <Widget>[
              //   Icon(
              //     Icons.arrow_upward,
              //     size: containerSize,
              //     color: Colors.black.withOpacity(0),
              //   ),
              //   Icon(
              //     Icons.arrow_upward,
              //     size: containerSize,
              //     color: Colors.black.withOpacity(0),
              //   ),
              //   Icon(
              //     Icons.arrow_upward,
              //     size: containerSize,
              //     color: Colors.black.withOpacity(0),
              //   ),
              //   Icon(
              //     Icons.arrow_upward,
              //     size: containerSize,
              //     color: Colors.black.withOpacity(0),
              //   ),
              //   Icon(
              //     Icons.arrow_upward,
              //     size: containerSize,
              //     color: Colors.black.withOpacity(0),
              //   ),
              //   Icon(
              //     Icons.arrow_upward,
              //     size: containerSize,
              //     color: Colors.black.withOpacity(0),
              //   ),
              //   Icon(
              //     Icons.arrow_upward,
              //     size: containerSize,
              //     color: Colors.black.withOpacity(0),
              //   ),
              //   Icon(
              //     Icons.arrow_upward,
              //     size: containerSize,
              //     color: Colors.black.withOpacity(0),
              //   ),
              //   Icon(
              //     Icons.arrow_upward,
              //     size: containerSize,
              //     color: Colors.black,
              //   ),
              // ]),
              // Row(
              //   children: <Widget>[
              //     Container(
              //         decoration: const BoxDecoration(
              //             shape: BoxShape.circle, color: Colors.blue),
              //         width: containerSize,
              //         height: containerSize),
              //     Icon(
              //       Icons.arrow_forward,
              //       size: containerSize,
              //     ),
              //     Container(
              //         decoration: const BoxDecoration(
              //             shape: BoxShape.circle, color: Colors.red),
              //         width: containerSize,
              //         height: containerSize),
              //     Icon(
              //       Icons.arrow_forward,
              //       size: containerSize,
              //     ),
              //     Container(
              //         decoration: const BoxDecoration(
              //             shape: BoxShape.circle, color: Colors.blue),
              //         width: containerSize,
              //         height: containerSize),
              //     Icon(
              //       Icons.arrow_forward,
              //       size: containerSize,
              //     ),
              //     Container(
              //         decoration: const BoxDecoration(
              //             shape: BoxShape.circle, color: Colors.red),
              //         width: containerSize,
              //         height: containerSize),
              //     Icon(
              //       Icons.arrow_forward,
              //       size: containerSize,
              //     ),
              //     Container(
              //         decoration: const BoxDecoration(
              //             shape: BoxShape.circle, color: Colors.blue),
              //         width: containerSize,
              //         height: containerSize),
              //   ],
              // ),
              // Row(children: <Widget>[
              //   Icon(
              //     Icons.arrow_upward,
              //     size: containerSize,
              //   )
              // ]),
              // Row(
              //   children: <Widget>[
              //     Container(
              //         decoration: const BoxDecoration(
              //             shape: BoxShape.circle, color: Colors.blue),
              //         width: containerSize,
              //         height: containerSize),
              //     Icon(
              //       Icons.arrow_back,
              //       size: containerSize,
              //     ),
              //     Container(
              //         decoration: const BoxDecoration(
              //             shape: BoxShape.circle, color: Colors.red),
              //         width: containerSize,
              //         height: containerSize),
              //     Icon(
              //       Icons.arrow_back,
              //       size: containerSize,
              //     ),
              //     Container(
              //         decoration: const BoxDecoration(
              //             shape: BoxShape.circle, color: Colors.blue),
              //         width: containerSize,
              //         height: containerSize),
              //     Icon(
              //       Icons.arrow_back,
              //       size: containerSize,
              //     ),
              //     Container(
              //         decoration: const BoxDecoration(
              //             shape: BoxShape.circle, color: Colors.red),
              //         width: containerSize,
              //         height: containerSize),
              //     Icon(
              //       Icons.arrow_back,
              //       size: containerSize,
              //     ),
              //     Container(
              //         decoration: const BoxDecoration(
              //             shape: BoxShape.circle, color: Colors.blue),
              //         width: containerSize,
              //         height: containerSize),
              //   ],
              // ),
              // Row(children: <Widget>[
              //   Icon(
              //     Icons.arrow_upward,
              //     size: containerSize,
              //     color: Colors.black.withOpacity(0),
              //   ),
              //   Icon(
              //     Icons.arrow_upward,
              //     size: containerSize,
              //     color: Colors.black.withOpacity(0),
              //   ),
              //   Icon(
              //     Icons.arrow_upward,
              //     size: containerSize,
              //     color: Colors.black.withOpacity(0),
              //   ),
              //   Icon(
              //     Icons.arrow_upward,
              //     size: containerSize,
              //     color: Colors.black.withOpacity(0),
              //   ),
              //   Icon(
              //     Icons.arrow_upward,
              //     size: containerSize,
              //     color: Colors.black.withOpacity(0),
              //   ),
              //   Icon(
              //     Icons.arrow_upward,
              //     size: containerSize,
              //     color: Colors.black.withOpacity(0),
              //   ),
              //   Icon(
              //     Icons.arrow_upward,
              //     size: containerSize,
              //     color: Colors.black.withOpacity(0),
              //   ),
              //   Icon(
              //     Icons.arrow_upward,
              //     size: containerSize,
              //     color: Colors.black.withOpacity(0),
              //   ),
              //   Icon(
              //     Icons.arrow_upward,
              //     size: containerSize,
              //     color: Colors.black,
              //   ),
              // ]),
              // Row(
              //   children: <Widget>[
              //     Container(
              //         decoration: const BoxDecoration(
              //             shape: BoxShape.circle, color: Colors.blue),
              //         width: containerSize,
              //         height: containerSize),
              //     Icon(
              //       Icons.arrow_forward,
              //       size: containerSize,
              //     ),
              //     Container(
              //         decoration: const BoxDecoration(
              //             shape: BoxShape.circle, color: Colors.red),
              //         width: containerSize,
              //         height: containerSize),
              //     Icon(
              //       Icons.arrow_forward,
              //       size: containerSize,
              //     ),
              //     Container(
              //         decoration: const BoxDecoration(
              //             shape: BoxShape.circle, color: Colors.blue),
              //         width: containerSize,
              //         height: containerSize),
              //     Icon(
              //       Icons.arrow_forward,
              //       size: containerSize,
              //     ),
              //     Container(
              //         decoration: const BoxDecoration(
              //             shape: BoxShape.circle, color: Colors.red),
              //         width: containerSize,
              //         height: containerSize),
              //     Icon(
              //       Icons.arrow_forward,
              //       size: containerSize,
              //     ),
              //     Container(
              //         decoration: const BoxDecoration(
              //             shape: BoxShape.circle, color: Colors.blue),
              //         width: containerSize,
              //         height: containerSize),
              //   ],
              // ),
              // Row(children: <Widget>[
              //   Icon(
              //     Icons.arrow_upward,
              //     size: containerSize,
              //     color: Colors.black.withOpacity(0),
              //   ),
              // ]),
              )),
    );
  }
}
