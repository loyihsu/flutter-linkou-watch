import 'package:flutter/material.dart';

class ContentWidget extends StatefulWidget {
  const ContentWidget({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => ContentWidgetState();
}

// class ContentWidgetState extends State<ContentWidget> {
//   final String _title = "林口 - 圓山";
//   String _speed = "均速 100 公里";
//   String _estimation = "約 2 分鐘";

//   void setSpeed(int newSpeed) {
//     setState(() {
//       _speed = "均速 " + newSpeed.toString() + " 公里";
//     });
//   }

//   void setEstination(int newEstimation) {
//     setState(() {
//       _estimation = "約" + newEstimation.toString() + "分鐘";
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: const BoxDecoration(
//           shape: BoxShape.rectangle,
//           color: Colors.cyan,
//           borderRadius: BorderRadius.all(Radius.circular(20))),
//       child: Padding(
//           padding: const EdgeInsets.all(15),
//           child: Column(children: <Widget>[
//             Text(_title, style: Theme.of(context).textTheme.headline5),
//             Text(_speed),
//             Text(_estimation),
//           ])),
//     );
//   }
// }

class ContentWidgetState extends State<ContentWidget> {
  final String _title = "Linkou to Yuanshan";
  String _speed = "100 kmps";
  String _estimation = "2 minutes";

  void setSpeed(int newSpeed) {
    setState(() {
      _speed = newSpeed.toString() + " kmps";
    });
  }

  void setEstination(int newEstimation) {
    setState(() {
      _estimation = newEstimation.toString() + " minutes";
    });
  }

  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.cyan,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(children: <Widget>[
              Text(_title, style: Theme.of(context).textTheme.headline5),
              Text(_speed),
              Text(_estimation),
            ])));
  }
}
