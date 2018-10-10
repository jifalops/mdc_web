part of mdc_web;

/// A material design navigation drawer.
///
/// Javascript: `mdc.drawer.MDCDrawer`.
///
/// See the [component reference](https://material.io/develop/web/components/drawers/#mdcdrawer-properties-and-methods)
/// and [source code](https://github.com/material-components/material-components-web/tree/master/packages/mdc-drawer/index.js).
@JS('drawer.MDCDrawer')
abstract class MDCDrawer extends MDCComponent {
  external static MDCDrawer attachTo(Element element);
  external factory MDCDrawer(Element element, [MDCFoundation foundation, args]);

  external bool get open;
  external void set open(bool value);
}

const mdcDrawerOpenedEvent = 'MDCDrawer:opened';
const mdcDrawerClosedEvent = 'MDCDrawer:closed';
