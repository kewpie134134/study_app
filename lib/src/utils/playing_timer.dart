import "package:flutter/material.dart";
import "dart:async";

class PlayingTimer extends StatefulWidget {
  const PlayingTimer({Key? key}) : super(key: key);
  @override
  State<PlayingTimer> createState() => _PlayingTimerState();
}

class _PlayingTimerState extends State<PlayingTimer> {
  // 定数宣言
  int _time = 0;
  Timer _timer = Timer.periodic(const Duration(seconds: 1), (timer) {});

  @override
  void initState() {
    // 初期化
    _timer = Timer.periodic(const Duration(seconds: 1), _onTimer);
    super.initState();
  }

  @override
  void dispose() {
    // 破棄されるときに停止する
    _timer.cancel();
    super.dispose();
  }

  void _onTimer(Timer timer) {
    setState(() => _time += 1);
  }

  @override
  Widget build(BuildContext context) {
    return Text(_time.toString());
  }
}
