import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lighting_app/components/schedule_tile.dart';

import '../models/showcase_schedule.dart';

class ComingShowcasePage extends StatelessWidget {
  final _schedules = [
    ShowcaseSchedule(
        date: DateTime(2020, 7, 10), speaker: "Edgar", title: "Flutter"),
    ShowcaseSchedule(
        date: DateTime(2020, 7, 17),
        speaker: "Ryan",
        title: "High level debugging"),
    ShowcaseSchedule(
        date: DateTime(2020, 7, 24), speaker: "Hey", title: "NoSql p2"),
    ShowcaseSchedule(
        date: DateTime(2020, 7, 31), speaker: "Min", title: "Clover parser"),
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return Scaffold(
        appBar: AppBar(
          title: Text("Lighting Showcase",
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  .copyWith(color: Colors.white)),
        ),
        body: ListView.builder(
            itemBuilder: (context, index) {
              final schedule = _schedules[index];
              return Dismissible(
                  key: ObjectKey(schedule),
                  child: ScheduleTile(schedule: schedule));
            },
            itemCount: _schedules.length));
  }
}
