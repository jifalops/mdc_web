part of mdc_web;

/// A reusable surface that appears above the content of the page and can be
/// positioned adjacent to an element.
///
/// Javascript: `mdc.menuSurface.MDCMenuSurface`.
///
/// * [Component Reference](https://material.io/develop/web/components/menu-surface/#mdcmenusurface-properties-and-methods)
/// * [Source Code](https://github.com/material-components/material-components-web/blob/master/packages/mdc-menu-surface/index.js)
class MDCMenuSurface extends MDCComponent<_MenuSurface> {
  static MDCMenuSurface attachTo(Element root) => MDCMenuSurface._attach(root);
  MDCMenuSurface._attach(Element root) : super._(_MenuSurface.attachTo(root));

  MDCMenuSurface(Element root, [foundation, args])
      : super._(_preserveUndefined(root, foundation, args));

  static _MenuSurface _preserveUndefined(Element root, foundation, args) =>
      foundation == null
          ? _MenuSurface(root)
          : args == null
              ? _MenuSurface(root, foundation)
              : _MenuSurface(root, foundation, args);

  bool get open => _js.open;
  void set open(bool value) => _js.open = value;
  bool get quickOpen => _js.quickOpen;
  void set quickOpen(bool value) => _js.quickOpen = value;

  /// See [AnchorCorner] for acceptable values.
  void setAnchorCorner(num corner) => _js.setAnchorCorner(corner);

  void setAnchorMargin(AnchorMargin margin) => _js.setAnchorMargin(margin);
  void setFixedPosition(bool isFixed) => _js.setFixedPosition(isFixed);
  void setAbsolutePosition(num x, num y) => _js.setAbsolutePosition(x, y);

  /// Changes the element used as an anchor for menu-surface positioning logic.
  /// Should be used with conjunction with hoistMenuToBody().
  void setMenuSurfaceAnchorElement(Element root) =>
      _js.setMenuSurfaceAnchorElement(root);

  /// Removes the menu-surface element from the DOM and appends it to the body
  /// element. Should be used to overcome overflow: hidden issues.
  void hoistMenuToBody() => _js.hoistMenuToBody();
  void setIsHoisted(bool hoisted) => _js.setIsHoisted(hoisted);

  static const openedEvent = 'MDCMenuSurface:opened';
  static const closedEvent = 'MDCMenuSurface:closed';
}

@JS('menuSurface.MDCMenuSurface')
abstract class _MenuSurface extends _Component {
  external static _MenuSurface attachTo(Element root);
  external factory _MenuSurface(Element root, [foundation, args]);

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
  external void setMenuSurfaceAnchorElement(Element root);

  /// Removes the menu-surface element from the DOM and appends it to the body
  /// element. Should be used to overcome overflow: hidden issues.
  external void hoistMenuToBody();
  external void setIsHoisted(bool hoisted);
}

@JS('menuSurface.Corner')
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

/// The anchored corner of a [_Menu] or [_MenuSurface].
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
