@JS('mdc.drawer')
library mdc_web_drawer;

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
@JS('MDCDrawer')
abstract class Drawer extends Component {
  external static Drawer attachTo(Element element);
  external factory Drawer(Element element, [Foundation foundation, args]);

  external bool get open;
  external void set open(bool value);
}

/// [Drawer] events and helpers.
class drawer {
  static const openedEvent = 'MDCDrawer:opened';
  static const closedEvent = 'MDCDrawer:closed';
}
