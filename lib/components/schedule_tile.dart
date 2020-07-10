import 'package:flutter/material.dart';
import 'package:lighting_app/models/showcase_schedule.dart';
import 'package:lighting_app/utils.dart';

class ScheduleTile extends StatefulWidget {
  const ScheduleTile({
    Key key,
    @required this.schedule,
  }) : super(key: key);

  final ShowcaseSchedule schedule;

  @override
  _ScheduleTileState createState() => _ScheduleTileState();
}

class _ScheduleTileState extends State<ScheduleTile> {
  bool _isFav = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.schedule.color,
      child: ListTile(
        leading: Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(
            widget.schedule.date.toMyFormat() + "  ",
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        title: Text(widget.schedule.title,
            style: Theme.of(context).textTheme.headline6),
        subtitle: Text("by ${widget.schedule.speaker}"),
        trailing: IconButton(
          icon: Icon(
            Icons.favorite,
            color: _isFav ? Colors.pink : Colors.grey,
          ),
          onPressed: () {
            setState(() {
              _isFav = !_isFav;
            });
          },
        ),
      ),
    );
  }
}
