part of mdc_web;

/// A reusable surface that appears above the content of the page and can be
/// positioned adjacent to an element.
///
/// Javascript: `mdc.menuSurface.MDCMenuSurface`.
///
/// See the [component reference](https://material.io/develop/web/components/menu-surface/#mdcmenusurface-properties-and-methods)
/// and [source code](https://github.com/material-components/material-components-web/blob/master/packages/mdc-menu-surface/index.js).
@JS('menuSurface.MDCMenuSurface')
abstract class MDCMenuSurface extends MDCComponent {
  external factory MDCMenuSurface(Element element,
      [MDCFoundation foundation, args]);
  external static MDCMenuSurface attachTo(Element element);

  external bool get open;
  external void set open(bool value);
  external bool get quickOpen;
  external void set quickOpen(bool value);

  /// See [AnchorCorner] for accepted constants.
  external void setAnchorCorner(num corner);

  @JS('setAnchorMargin')
  external void _setAnchorMargin(margin);
  void setAnchorMargin(AnchorMargin margin) => _setAnchorMargin(margin.toMap());
  external void setFixedPosition(bool isFixed);
  external void setAbsolutePosition(num x, num y);

  /// Changes the element used as an anchor for menu-surface positioning logic.
  /// Should be used with conjunction with hoistMenuToBody().
  external void setMenuSurfaceAnchorElement(Element element);

  /// Removes the menu-surface element from the DOM and appends it to the body
  /// element. Should be used to overcome overflow: hidden issues.
  external void hoistMenuToBody();
  external void setIsHoisted(bool hoisted);

  static const openedEvent = 'MDCMenuSurface:opened';
  static const closedEvent = 'MDCMenuSurface:closed';
}

/// The anchored corner of a [MDCMenu] or [MDCMenuSurface].
@JS('menuSurface.Corner')
class AnchorCorner {
  @JS('TOP_LEFT')
  external static num get topLeft;
  @JS('TOP_RIGHT')
  external static num get topRight;
  @JS('BOTTOM_LEFT')
  external static num get bottomLeft;
  @JS('BOTTOM_RIGHT')
  external static num get bottomRight;
  @JS('TOP_START')
  external static num get topStart;
  @JS('TOP_END')
  external static num get topEnd;
  @JS('BOTTOM_START')
  external static num get bottomStart;
  @JS('BOTTOM_END')
  external static num get bottomEnd;
}

/// Set the top, right, bottom, left margin. Defined natively because it is
/// undefined in the latest Javascript version (0.40.0).
class AnchorMargin {
  const AnchorMargin(
      {this.top: 0, this.right: 0, this.bottom: 0, this.left: 0});
  final num top, right, bottom, left;

  Map toMap() => {'top': top, 'right': right, 'bottom': bottom, 'left': left};
}

/// A menu displays a list of choices on a temporary surface. They appear when
/// users interact with a button, action, or other control.
///
/// Javascript: `mdc.menu.MDCMenu`.
///
/// See the [component reference](https://material.io/develop/web/components/menus/#mdcmenu-properties-and-methods)
/// and [source code](https://github.com/material-components/material-components-web/blob/master/packages/mdc-menu/index.js).
@JS('menu.MDCMenu')
abstract class MDCMenu extends MDCComponent {
  external factory MDCMenu(Element element, [MDCFoundation foundation, args]);
  external static MDCMenu attachTo(Element element);

  external bool get open;
  external void set open(bool value);
  external bool get quickOpen;
  external void set quickOpen(bool value);
  @JS('items')
  external List get _items;
  List<Element> get items => List.from(_items);

  /// See [AnchorCorner] for accepted constants.
  external void setAnchorCorner(num corner);

  @JS('setAnchorMargin')
  external void _setAnchorMargin(margin);
  void setAnchorMargin(AnchorMargin margin) => _setAnchorMargin(margin.toMap());
  external void setFixedPosition(bool isFixed);
  external void setAbsolutePosition(num x, num y);

  /// Removes the menu-surface element from the DOM and appends it to the body
  /// element. Should be used to overcome overflow: hidden issues.
  external void hoistMenuToBody();
  external void setIsHoisted(bool hoisted);

  /// Changes the element used as an anchor for menu-surface positioning logic.
  /// Should be used with conjunction with hoistMenuToBody().
  external void setAnchorElement(Element element);

  external Element getOptionByIndex(num index);
}
