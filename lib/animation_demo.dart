import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

class AnimationDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new AnimationState();
  }
}

class AnimatedView extends AnimatedWidget {
  static final _opacityTween = new Tween<double>(begin: 0.1, end: 1.0);
  static final _sizeTween = new Tween<double>(begin: 0.0, end: 300.0);

  AnimatedView({Key key, Animation<double> animation})
      : super(key: key, listenable: animation);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final Animation<double> animation = listenable;
    return new Center(
      child: new Opacity(
        opacity: _opacityTween.evaluate(animation),
        child: new Container(
          margin: new EdgeInsets.symmetric(vertical: 10.0),
          height: _sizeTween.evaluate(animation),
          width: _sizeTween.evaluate(animation),
          child: new FlutterLogo(),
        ),
      ),
    );
  }
}

class AnimationState extends State<AnimationDemo>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  Animation<double> scaleAnimation;

  Widget _body() {
    return new AnimatedView(animation: scaleAnimation,);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = new AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    scaleAnimation =
        new CurvedAnimation(parent: _animationController, curve: Curves.easeIn);
    scaleAnimation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _animationController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _animationController.forward();
      }
    });
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(title: new Text('Animation Demo')),
      body: _body(),
    );
  }

  dispose() {
    _animationController.dispose();
    super.dispose();
  }
}

