import 'package:flutter/material.dart';
import 'package:linkou/WatchView/TileWidget.dart';
import 'package:linkou/WatchView/WatchViewModel.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider.value(value: WatchViewModel()),
        ],
        child: MaterialApp(
          title: 'Linkou',
          theme: ThemeData(
            primarySwatch: Colors.indigo,
          ),
          home: const MyHomePage(title: 'Linkou'),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    WatchViewModel subscription = Provider.of<WatchViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TileWidget(
                tileColor: Colors.cyan, subscription: subscription, idx: 0),
            TileWidget(
                tileColor: Colors.purple, subscription: subscription, idx: 1),
            TileWidget(
                tileColor: Colors.pink, subscription: subscription, idx: 2),
            TileWidget(
                tileColor: Colors.yellow, subscription: subscription, idx: 3),
          ],
        ),
      ),
    );
  }
}
