import 'package:flutter/cupertino.dart';

class WatchViewModel with ChangeNotifier {
  final List<WatchElement> _elements = [];
  WatchViewModel() {
    _elements.add(WatchElement(title: "林口 - 圓山"));
    _elements.add(WatchElement(title: "圓山 - 林口"));
    _elements.add(WatchElement(title: "林口 - 內湖"));
    _elements.add(WatchElement(title: "內湖 - 林口"));
    feedData();
  }

  WatchElement getElement(int idx) {
    return _elements[idx];
  }

  void feedData() {
    feedFakeData();
  }

  void feedFakeData() {
    _elements[0].speed = 100;
    _elements[0].estimation = 20;
    _elements[1].speed = 200;
    _elements[1].estimation = 10;
    _elements[2].speed = 300;
    _elements[2].estimation = 5;
    _elements[3].speed = 400;
    _elements[3].estimation = 2;
  }

  void updateSpeed(int idx, int value) {
    _elements[idx].speed = value;
    notifyListeners();
  }
}

class WatchElement {
  final String title;
  String _speed = "";
  String _estimation = "";

  WatchElement({required this.title});

  String get speed {
    return _speed;
  }

  String get estimation {
    return _estimation;
  }

  set speed(newValue) {
    _speed = "均速 " + newValue.toString() + " 公里";
  }

  set estimation(newValue) {
    _estimation = "預估 " + newValue.toString() + " 分鐘";
  }
}
