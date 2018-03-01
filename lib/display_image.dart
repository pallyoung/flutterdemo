import 'package:flutter/material.dart';

class DisplayImageDemo extends StatelessWidget {
  Widget _assetImage() {
    return new Image.asset(
      'images/lake.jpg',
      width: 600.0,
      height: 240.0,
      fit: BoxFit.cover,
    );
  }

  Widget _internetImage() {
    return new Image.network(
      'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1520491930&di=c2d812abd15d4f8fa69af76351bca23f&imgtype=jpg&er=1&src=http%3A%2F%2Fa3.topitme.com%2F3%2F73%2F72%2F1118264985e1172733o.jpg',
      width: 600.0,
      height: 240.0,
      fit: BoxFit.cover,
      repeat: ImageRepeat.noRepeat,
      alignment: Alignment.center,
      scale: 1.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(title: new Text('Display Image')),
      body: new ListView(
        children: <Widget>[
          _assetImage(),
          _internetImage()
        ],
      ),
    );
  }
}
