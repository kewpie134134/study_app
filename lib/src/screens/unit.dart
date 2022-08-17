import 'package:flutter/material.dart';

class UnitScreen extends StatelessWidget {
  const UnitScreen({Key? key, required this.unit}) : super(key: key);
  final String unit;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(unit)),
      body: const Center(
        child: Text("勉強するテーマの説明", style: TextStyle(fontSize: 32.0)),
      ),
    );
  }
}
