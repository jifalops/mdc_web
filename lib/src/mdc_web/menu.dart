part of mdc_web;

/// A menu displays a list of choices on a temporary surface. They appear when
/// users interact with a button, action, or other control.
///
/// Javascript: `mdc.menu.MDCMenu`.
///
/// * [Design Guidelines](https://material.io/go/design-menus)
/// * [Component Reference](https://material.io/develop/web/components/menus/#mdcmenu-properties-and-methods)
/// * [Demo](https://material-components.github.io/material-components-web-catalog/#/component/menu)
/// * [Source Code](https://github.com/material-components/material-components-web/blob/master/packages/mdc-menu/index.js)
class MDCMenu extends MDCComponent<_Menu> {
  static MDCMenu attachTo(Element root) => MDCMenu._attach(root);
  MDCMenu._attach(Element root) : super._(_Menu.attachTo(root));

  MDCMenu(Element root, [foundation, args])
      : super._(_preserveUndefined(root, foundation, args));

  static _Menu _preserveUndefined(Element root, foundation, args) =>
      foundation == null
          ? _Menu(root)
          : args == null
              ? _Menu(root, foundation)
              : _Menu(root, foundation, args);

  bool get open => _js.open;
  void set open(bool value) => _js.open = value;
  bool get quickOpen => _js.quickOpen;
  void set quickOpen(bool value) => _js.quickOpen = value;

  List<Element> get items => List.from(_js.items);

  /// See [AnchorCorner] for accepted constants.
  void setAnchorCorner(num corner) => _js.setAnchorCorner(corner);

  void setAnchorMargin(AnchorMargin margin) => _js.setAnchorMargin(margin);
  void setFixedPosition(bool isFixed) => _js.setFixedPosition(isFixed);
  void setAbsolutePosition(num x, num y) => _js.setAbsolutePosition(x, y);

  /// Removes the menu-surface element from the DOM and appends it to the body
  /// element. Should be used to overcome overflow: hidden issues.
  void hoistMenuToBody() => _js.hoistMenuToBody();
  void setIsHoisted(bool hoisted) => _js.setIsHoisted(hoisted);

  /// Changes the element used as an anchor for menu-surface positioning logic.
  /// Should be used with conjunction with hoistMenuToBody().
  void setAnchorElement(Element root) => _js.setAnchorElement(root);

  Element getOptionByIndex(num index) => _js.getOptionByIndex(index);
}

@JS('menu.MDCMenu')
abstract class _Menu extends _Component {
  external static _Menu attachTo(Element root);
  external factory _Menu(Element root, [foundation, args]);

  external bool get open;
  external void set open(bool value);
  external bool get quickOpen;
  external void set quickOpen(bool value);

  external List get items;

  /// See [AnchorCorner] for accepted constants.
  external void setAnchorCorner(num corner);

  external void setAnchorMargin(AnchorMargin margin);
  external void setFixedPosition(bool isFixed);
  external void setAbsolutePosition(num x, num y);

  /// Removes the menu-surface element from the DOM and appends it to the body
  /// element. Should be used to overcome overflow: hidden issues.
  external void hoistMenuToBody();
  external void setIsHoisted(bool hoisted);

  /// Changes the element used as an anchor for menu-surface positioning logic.
  /// Should be used with conjunction with hoistMenuToBody().
  external void setAnchorElement(Element root);

  external Element getOptionByIndex(num index);
}
