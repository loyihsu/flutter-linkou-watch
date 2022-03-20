import 'package:flutter/material.dart';
import 'package:linkou/WatchView/WatchViewModel.dart';

class TileWidget extends StatefulWidget {
  const TileWidget(
      {Key? key, required this.tileColor, required this.subscription, required this.idx})
      : super(key: key);

  final Color tileColor;
  final WatchViewModel subscription;
  final int idx;

  @override
  State<TileWidget> createState() => TileWidgetState();
}

class TileWidgetState extends State<TileWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: widget.tileColor,
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(children: <Widget>[
            Text(widget.subscription.getElement(widget.idx).title,
                style: Theme.of(context).textTheme.headline5),
            Text(widget.subscription.getElement(widget.idx).speed),
            Text(widget.subscription.getElement(widget.idx).estimation),
          ])),
    );
  }
}
