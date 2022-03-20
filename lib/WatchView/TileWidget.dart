import 'package:flutter/material.dart';

class TileWidget extends StatefulWidget {
  const TileWidget({Key? key, required this.tileColor}) : super(key: key);
  
  final Color tileColor;
  
  @override
  State<TileWidget> createState() => TileWidgetState();
}

class TileWidgetState extends State<TileWidget> {
  final String _title = "林口 - 圓山";
  String _speed = "均速 100 公里";
  String _estimation = "約 2 分鐘";

  void setSpeed(int newSpeed) {
    setState(() {
      _speed = "均速 " + newSpeed.toString() + " 公里";
    });
  }

  void setEstination(int newEstimation) {
    setState(() {
      _estimation = "約" + newEstimation.toString() + "分鐘";
    });
  }

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
            Text(_title, style: Theme.of(context).textTheme.headline5),
            Text(_speed),
            Text(_estimation),
          ])),
    );
  }
}
