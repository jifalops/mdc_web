@JS('mdc.menuSurface')
library mdc_web_menu_surface;

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
abstract class MenuSurface extends Component {
  external static MenuSurface attachTo(Element element);
  external factory MenuSurface(Element element, [Foundation foundation, args]);

  external bool get open;
  external void set open(bool value);
  external bool get quickOpen;
  external void set quickOpen(bool value);

  /// See [AnchorCorner] for acceptable values.
  external void setAnchorCorner(num corner);

  external void setAnchorMargin(AnchorMargin margin);
  external void setFixedPosition(bool isFixed);
  external void setAbsolutePosition(num x, num y);

  /// Changes the element used as an anchor for menu-surface positioning logic.
  /// Should be used with conjunction with hoistMenuToBody().
  external void setMenuSurfaceAnchorElement(Element element);

  /// Removes the menu-surface element from the DOM and appends it to the body
  /// element. Should be used to overcome overflow: hidden issues.
  external void hoistMenuToBody();
  external void setIsHoisted(bool hoisted);
}

/// [MenuSurface] events and helpers.
class menuSurface {
  static const openedEvent = 'MDCMenuSurface:opened';
  static const closedEvent = 'MDCMenuSurface:closed';
}

@JS('Corner')
abstract class _Corner {
  external static num get TOP_LEFT;
  external static num get TOP_RIGHT;
  external static num get BOTTOM_LEFT;
  external static num get BOTTOM_RIGHT;
  external static num get TOP_START;
  external static num get TOP_END;
  external static num get BOTTOM_START;
  external static num get BOTTOM_END;
}

/// The anchored corner of a [Menu] or [MenuSurface].
class AnchorCorner {
  static num get topLeft => _Corner.TOP_LEFT;
  static num get topRight => _Corner.TOP_RIGHT;
  static num get bottomLeft => _Corner.BOTTOM_LEFT;
  static num get bottomRight => _Corner.BOTTOM_RIGHT;
  static num get topStart => _Corner.TOP_START;
  static num get topEnd => _Corner.TOP_END;
  static num get bottomStart => _Corner.BOTTOM_START;
  static num get bottomEnd => _Corner.BOTTOM_END;
}

/// Set the top, right, bottom, and/or left margin.
@JS()
@anonymous
class AnchorMargin {
  const AnchorMargin(
      {this.top: 0, this.right: 0, this.bottom: 0, this.left: 0});
  final num top, right, bottom, left;
}
