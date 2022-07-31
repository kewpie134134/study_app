import 'package:flutter/material.dart';

const int loadmapLength = 23;

List<Widget> _makeWidgets(
    BuildContext context, List newList, double containerSize) {
  var contentWidgets = <Widget>[];

  contentWidgets.add(const Text("ロードマップ"));
  for (final list in newList) {
    var tmpWidgets = <Widget>[];
    for (int i = 0; i < list.length; i++) {
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
    contentWidgets.add(Row(children: tmpWidgets));
    contentWidgets.add(Icon(
      Icons.arrow_upward,
      size: containerSize,
    ));
  }
  return contentWidgets;
}

List<dynamic> loadmapList(int loadmapLength) {
  var reversedList =
      (List.generate(loadmapLength + 2, (i) => i).reversed.toList());
  var newList = [];
  var loopIndex = 0;
  for (int i = 0; i < (loadmapLength + 2) / 5; i++) {
    if (reversedList.length > loopIndex + 5) {
      newList.add(reversedList.sublist(loopIndex, loopIndex + 5));
      loopIndex += 5;
    } else {
      newList.add(reversedList.sublist(loopIndex));
    }
    if (i % 2 == 0) {
      newList[i].sort();
    }
  }
  return newList;
}

class LoadmapScreeen extends StatelessWidget {
  const LoadmapScreeen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
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
