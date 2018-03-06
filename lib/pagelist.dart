import './infinite_scroll_demo.dart';
import './basic_layout_demo.dart';
import './display_image.dart';
import './input_demo.dart';
import './animation_demo.dart';

final PageList = [
  {
    'name':'Scroll Demo',
    'widget': new RandomWords()
  },
  {
    'name':'Basic Layout Demo',
    'widget': new BasicLayoutDemo()
  },
  {
    'name':'Display Image Demo',
    'widget': new DisplayImageDemo()
  },
  {
    'name':'Input Demo',
    'widget': new InputDemo()
  },
  {
    'name':'Animation Demo',
    'widget': new AnimationDemo()
  }
];