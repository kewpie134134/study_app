import "package:flutter/material.dart";
import "package:quiver/async.dart";

class CountDownTimer extends StatefulWidget {
  const CountDownTimer({Key? key, required this.start}) : super(key: key);
  final int start;

  @override
  State<CountDownTimer> createState() => _CountDownTimerState();
}

class _CountDownTimerState extends State<CountDownTimer> {
  // カウントダウンを示すインスタンス変数
  int _start = 10;
  int _current = 10;
  CountdownTimer _countdownTimer = CountdownTimer(
    const Duration(seconds: 10),
    const Duration(seconds: 1),
  );

  @override
  void initState() {
    // 初期化
    _start = widget.start;
    _current = widget.start;
    _countDownTimer();
    super.initState();
  }

  @override
  void dispose() {
    // 破棄された時に停止する
    _countdownTimer.cancel();
    super.dispose();
  }

  void _countDownTimer() {
    _countdownTimer = CountdownTimer(
      Duration(seconds: _start), // 初期値
      const Duration(seconds: 1), // 減らす幅
    );

    var sub = _countdownTimer.listen(null);
    sub.onData((duration) {
      setState(() {
        _current = _start - duration.elapsed.inSeconds; // 毎秒減らしていく
      });
    });

    // 終了時の処理
    sub.onDone(() {
      sub.cancel();
      // _current = widget.start;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("$_current秒"));
  }
}
