import 'dart:math';

// 裏面カードを含むすべてのトランプマークの配列
List randomAllTrumpMarks =
    _addMapKeysToList(_randomAllTrumpMarksExceptBack, _backTrumps);

// 裏面カードを含むすべてのトランプマークの配列
Map allTrumps = {..._allTrumpsExceptBack, ..._backTrumps};

// スペードトランプカード一覧
Map _spadeTrumps = {
  'images/trumps/card_spade_01.png': 1,
  'images/trumps/card_spade_02.png': 2,
  'images/trumps/card_spade_03.png': 3,
  'images/trumps/card_spade_04.png': 4,
  'images/trumps/card_spade_05.png': 5,
  'images/trumps/card_spade_06.png': 6,
  'images/trumps/card_spade_07.png': 7,
  'images/trumps/card_spade_08.png': 8,
  'images/trumps/card_spade_09.png': 9,
  'images/trumps/card_spade_10.png': 10,
  'images/trumps/card_spade_11.png': 11,
  'images/trumps/card_spade_12.png': 12,
  'images/trumps/card_spade_13.png': 13,
};

// ハートトランプカード一覧
Map _heartTrumps = {
  'images/trumps/card_heart_01.png': 1,
  'images/trumps/card_heart_02.png': 2,
  'images/trumps/card_heart_03.png': 3,
  'images/trumps/card_heart_04.png': 4,
  'images/trumps/card_heart_05.png': 5,
  'images/trumps/card_heart_06.png': 6,
  'images/trumps/card_heart_07.png': 7,
  'images/trumps/card_heart_08.png': 8,
  'images/trumps/card_heart_09.png': 9,
  'images/trumps/card_heart_10.png': 10,
  'images/trumps/card_heart_11.png': 11,
  'images/trumps/card_heart_12.png': 12,
  'images/trumps/card_heart_13.png': 13,
};

// ダイヤモンドトランプカード一覧
Map _diamondTrumps = {
  'images/trumps/card_diamond_01.png': 1,
  'images/trumps/card_diamond_02.png': 2,
  'images/trumps/card_diamond_03.png': 3,
  'images/trumps/card_diamond_04.png': 4,
  'images/trumps/card_diamond_05.png': 5,
  'images/trumps/card_diamond_06.png': 6,
  'images/trumps/card_diamond_07.png': 7,
  'images/trumps/card_diamond_08.png': 8,
  'images/trumps/card_diamond_09.png': 9,
  'images/trumps/card_diamond_10.png': 10,
  'images/trumps/card_diamond_11.png': 11,
  'images/trumps/card_diamond_12.png': 12,
  'images/trumps/card_diamond_13.png': 13,
};

// クローバートランプカード一覧
Map _cloverTrumps = {
  'images/trumps/card_clover_01.png': 1,
  'images/trumps/card_clover_02.png': 2,
  'images/trumps/card_clover_03.png': 3,
  'images/trumps/card_clover_04.png': 4,
  'images/trumps/card_clover_05.png': 5,
  'images/trumps/card_clover_06.png': 6,
  'images/trumps/card_clover_07.png': 7,
  'images/trumps/card_clover_08.png': 8,
  'images/trumps/card_clover_09.png': 9,
  'images/trumps/card_clover_10.png': 10,
  'images/trumps/card_clover_11.png': 11,
  'images/trumps/card_clover_12.png': 12,
  'images/trumps/card_clover_13.png': 13,
};

// ジョーカートランプカード一覧
Map _jokerTrumps = {'images/trumps/card_joker.png': 0};

// 裏面トランプカード一覧
Map _backTrumps = {'images/trumps/card_back.png': 0};

// 裏面カードを除くトランプマークと値のオブジェクト
Map _allTrumpsExceptBack = {
  ..._spadeTrumps,
  ..._heartTrumps,
  ..._cloverTrumps,
  ..._diamondTrumps,
};

// 裏面カードを除くトランプマークの配列
List _allTrumpMarksExceptBack = _allTrumpsExceptBack.keys.toList();
List _randomAllTrumpMarksExceptBack = _shuffle(_allTrumpMarksExceptBack);

// List に Map の Key を追加する
List _addMapKeysToList(List list, Map map) {
  List originList = list;
  originList.addAll(map.keys.toList());
  return originList;
}

// List 要素をランダムにシャッフル
List _shuffle(List items) {
  var random = Random();
  for (var i = items.length - 1; i > 0; i--) {
    var j = random.nextInt(i + 1);
    var tmp = items[i];
    items[i] = items[j];
    items[j] = tmp;
  }
  return items;
}
