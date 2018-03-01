import 'package:flutter/material.dart';
import './pagelist.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new HomeState();
  }
}

class HomeState extends State<Home> {
  final _pages = PageList;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('demo pages'),
        ),
        body: _pageList());
  }

  void _pushWidegt(Widget widegt) {
    Navigator.of(context).push(new MaterialPageRoute(builder: (context) {
      return widegt;
    }));
  }

  Widget _pageList() {
    final tiles = _pages.map(
      (page) {
        return new ListTile(
          title: new Text(
            page['name'],
            style: new TextStyle(fontSize: 18.0),
          ),
          onTap: () {
            _pushWidegt(page['widget']);
          },
        );
      },
    );
    final divided = ListTile
        .divideTiles(
          context: context,
          tiles: tiles,
        )
        .toList();
    return new ListView(children: divided);
  }
}
