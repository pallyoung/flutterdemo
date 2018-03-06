import 'package:flutter/material.dart';

class InputDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new InputState();
  }
}

class InputState extends State<InputDemo> {
  TextStyle _textStyle = new TextStyle(height:1.5,fontSize: 16.0,color:new Color(0xFF000000) );
  Widget _label(String label) {
    return new Container(
        width: 100.0,
        child: new Text(
          label,
          style: _textStyle,
        ));
  }

  Widget _textField() {
    return new Expanded(
      child: new Container(
        child: new TextField(
          style: _textStyle,
        ),
      ),
    );
  }

  Widget _textFieldRow(String label) {
    return new Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[_label(label), _textField()],
    );
  }

  Widget _body() {
    return new Container(
      padding: new EdgeInsets.all(16.0),
      child: new Column(
        children: <Widget>[_textFieldRow('name'), _textFieldRow('password')],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(title: new Text('Input Demo')), body: _body());
  }
}
