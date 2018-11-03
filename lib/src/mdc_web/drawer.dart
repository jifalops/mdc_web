@JS('mdc.drawer')
library drawer;

import 'dart:html';
import 'package:js/js.dart';
import 'base.dart';

/// A material design navigation drawer.
///
/// Javascript: `mdc.drawer.MDCDrawer`.
///
/// * [Design Guidelines](https://material.io/go/design-navigation-drawer)
/// * [Component Reference](https://material.io/develop/web/components/drawers/#mdcdrawer-properties-and-methods)
/// * [Demo](https://material-components.github.io/material-components-web-catalog/#/component/drawer)
/// * [Source Code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-drawer/index.js)
class MDCDrawer extends MDCComponent {
  static MDCDrawer attachTo(Element root) => MDCDrawer._attach(root);
  MDCDrawer._attach(Element root) : _js = DrawerComponent.attachTo(root);

  MDCDrawer(Element root, [foundation, args])
      : _js = _preserveUndefined(root, foundation, args);

  static DrawerComponent _preserveUndefined(Element root, foundation, args) =>
      foundation == null
          ? DrawerComponent(root)
          : args == null
              ? DrawerComponent(root, foundation)
              : DrawerComponent(root, foundation, args);

  DrawerComponent get js => _js;
  final DrawerComponent _js;

  bool get open => js.open;
  void set open(bool value) => js.open = value;

  static const openedEvent = 'MDCDrawer:opened';
  static const closedEvent = 'MDCDrawer:closed';
}

@JS('MDCDrawer')
abstract class DrawerComponent extends Component {
  external static DrawerComponent attachTo(Element root);
  external factory DrawerComponent(Element root, [foundation, args]);

  bool open;
}
