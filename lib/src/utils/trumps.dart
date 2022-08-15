const spadeTrumps = {
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

const heartTrumps = {
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

const diamondTrumps = {
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

const cloverTrumps = {
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

// トランプマークと値のオブジェクト
const allTrumps = {
  ...spadeTrumps,
  ...heartTrumps,
  ...cloverTrumps,
  ...diamondTrumps
};

// トランプマークの配列
var allTrumpsMarks = allTrumps.keys.toList();
