import 'package:flutter/material.dart';

class ShowcaseSchedule {
  final String title;
  final DateTime date;
  final String speaker;
  final Color color = Colors.white;
  // final Color color = Color(Random().nextInt(0xFFFFFF) + 0x88000000);

  ShowcaseSchedule({this.title, this.date, this.speaker});
}
