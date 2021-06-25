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
@JS('MDCDrawer')
abstract class DrawerComponent extends Component {
  external static DrawerComponent attachTo(Element root);
  external factory DrawerComponent(Element root,
      [MDCFoundation? foundation, args]);

  bool? open;
}
