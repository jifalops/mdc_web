part of mdc_web;

/// A material design navigation drawer.
///
/// Javascript: `mdc.drawer.MDCDrawer`.
///
/// * [Design Guidelines](https://material.io/go/design-navigation-drawer)
/// * [Component Reference](https://material.io/develop/web/components/drawers/#mdcdrawer-properties-and-methods)
/// * [Demo](https://material-components.github.io/material-components-web-catalog/#/component/drawer)
/// * [Source Code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-drawer/index.js)
class MDCDrawer extends MDCComponent<_Drawer> implements _Drawer {
  static MDCDrawer attachTo(Element root) => MDCDrawer._attach(root);
  MDCDrawer._attach(Element root) : super._(_Drawer.attachTo(root));

  MDCDrawer(Element root, [foundation, args])
      : super._(_preserveUndefined(root, foundation, args));

  static _Drawer _preserveUndefined(Element root, foundation, args) =>
      foundation == null
          ? _Drawer(root)
          : args == null
              ? _Drawer(root, foundation)
              : _Drawer(root, foundation, args);

  bool get open => _js.open;
  void set open(bool value) => _js.open = value;

  static const openedEvent = 'MDCDrawer:opened';
  static const closedEvent = 'MDCDrawer:closed';
}

@JS('drawer.MDCDrawer')
abstract class _Drawer extends _Component {
  external static _Drawer attachTo(Element root);
  external factory _Drawer(Element root, [foundation, args]);

  external bool get open;
  external void set open(bool value);
}
