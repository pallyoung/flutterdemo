import 'package:flutter/material.dart';

class InputDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new InputState();
  }
}

class InputState extends State<InputDemo> {
  TextStyle _textStyle =
      new TextStyle(height: 1.5, fontSize: 16.0, color: new Color(0xFF000000));
  var _name = '';
  var _password = '';
  Widget _inputSection() {
    return new Column(
      children: <Widget>[
        _textFieldRow('name', onChange: (value) {
          setState(() {
            _name = value;
          });
        }),
        _textFieldRow('password',onChange: (value){
          setState(() {
            _password = value;
          });
        },obscureText:true)
      ],
    );
  }

  Widget _displaySection() {
    return new Column(
      children: <Widget>[
        new Divider(),
        _displayView('姓名是' + _name),
        _displayView('密码是' + _password)
      ],
    );
  }

  Widget _displayView(String info) {
    return new Container(
      margin: new EdgeInsets.all(16.0),
      child: new Text(info, style: _textStyle),
    );
  }

  Widget _label(String label) {
    return new Container(
        width: 100.0,
        child: new Text(
          label,
          style: _textStyle,
        ));
  }

  Widget _textField({onChange, obscureText = false}) {
    return new Expanded(
      child: new Container(
        child: new TextField(
            style: _textStyle, onChanged: onChange, obscureText: obscureText),
      ),
    );
  }

  Widget _textFieldRow(String label, {onChange, obscureText = false}) {
    return new Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        _label(label),
        _textField(onChange: onChange, obscureText: obscureText)
      ],
    );
  }

  Widget _body() {
    return new Container(
      padding: new EdgeInsets.all(16.0),
      child: new Column(
        children: <Widget>[_inputSection(), _displaySection()],
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
