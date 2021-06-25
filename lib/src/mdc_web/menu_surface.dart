@JS('mdc.menuSurface')
library menu_surface;

import 'dart:html';
import 'package:js/js.dart';
import 'base.dart';

/// A reusable surface that appears above the content of the page and can be
/// positioned adjacent to an element.
///
/// Javascript: `mdc.menuSurface.MDCMenuSurface`.
///
/// * [Component Reference](https://material.io/develop/web/components/menu-surface/#mdcmenusurface-properties-and-methods)
/// * [Source Code](https://github.com/material-components/material-components-web/blob/master/packages/mdc-menu-surface/index.js)
@JS('MDCMenuSurface')
abstract class MenuSurfaceComponent extends Component {
  external static MenuSurfaceComponent attachTo(Element root);
  external factory MenuSurfaceComponent(Element root,
      [MDCFoundation? foundation, args]);

  bool? open;
  bool? quickOpen;

  /// See [AnchorCorner] for acceptable values.
  external void setAnchorCorner(int corner);

  external void setAnchorMargin(AnchorMargin margin);
  external void setFixedPosition(bool isFixed);
  external void setAbsolutePosition(num x, num y);

  /// Changes the element used as an anchor for menu-surface positioning logic.
  /// Should be used with conjunction with hoistMenuToBody().
  external void setMenuSurfaceAnchorElement(Element root);

  /// Removes the menu-surface element from the DOM and appends it to the body
  /// element. Should be used to overcome overflow: hidden issues.
  external void hoistMenuToBody();
  external void setIsHoisted(bool hoisted);
}

@JS('Corner')
abstract class MenuSurfaceCorner {
  external static int get TOP_LEFT;
  external static int get TOP_RIGHT;
  external static int get BOTTOM_LEFT;
  external static int get BOTTOM_RIGHT;
  external static int get TOP_START;
  external static int get TOP_END;
  external static int get BOTTOM_START;
  external static int get BOTTOM_END;
}

/// The margins for an [MDCMenu] or [MDCMenuSurface] anchor.
@JS()
@anonymous
abstract class AnchorMargin {
  external factory AnchorMargin({num? top, num? right, num? bottom, num? left});
  num? top;
  num? right;
  num? bottom;
  num? left;
}
