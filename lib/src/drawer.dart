import 'base.dart';
import 'mdc_web/drawer.dart';

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

  MDCDrawer(Element root, [MDCFoundation foundation, args])
      : _js = _preserveUndefined(root, foundation, args);

  DrawerComponent get js => _js;
  final DrawerComponent _js;

  bool get open => js.open;
  void set open(bool value) => js.open = value;

  static const openedEvent = 'MDCDrawer:opened';
  static const closedEvent = 'MDCDrawer:closed';
}

DrawerComponent _preserveUndefined(
        Element root, MDCFoundation foundation, args) =>
    foundation == null
        ? DrawerComponent(root)
        : args == null
            ? DrawerComponent(root, foundation)
            : DrawerComponent(root, foundation, args);
