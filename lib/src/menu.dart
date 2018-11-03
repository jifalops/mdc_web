import 'base.dart';
import 'menu_surface.dart';
import 'mdc_web/menu.dart';

export 'menu_surface.dart';

/// A menu displays a list of choices on a temporary surface. They appear when
/// users interact with a button, action, or other control.
///
/// Javascript: `mdc.menu.MDCMenu`.
///
/// * [Design Guidelines](https://material.io/go/design-menus)
/// * [Component Reference](https://material.io/develop/web/components/menus/#mdcmenu-properties-and-methods)
/// * [Demo](https://material-components.github.io/material-components-web-catalog/#/component/menu)
/// * [Source Code](https://github.com/material-components/material-components-web/blob/master/packages/mdc-menu/index.js)
class MDCMenu extends MDCComponent {
  static MDCMenu attachTo(Element root) => MDCMenu._attach(root);
  MDCMenu._attach(Element root) : _js = MenuComponent.attachTo(root);

  MDCMenu(Element root, [foundation, args])
      : _js = _preserveUndefined(root, foundation, args);

  MenuComponent get js => _js;
  final MenuComponent _js;

  bool get open => js.open;
  void set open(bool value) => js.open = value;
  bool get quickOpen => js.quickOpen;
  void set quickOpen(bool value) => js.quickOpen = value;

  List<Element> get items => List.from(js.items);

  /// See [AnchorCorner] for accepted constants.
  void setAnchorCorner(int corner) => js.setAnchorCorner(corner);

  void setAnchorMargin(AnchorMargin margin) => js.setAnchorMargin(margin);
  void setFixedPosition(bool isFixed) => js.setFixedPosition(isFixed);
  void setAbsolutePosition(num x, num y) => js.setAbsolutePosition(x, y);

  /// Removes the menu-surface element from the DOM and appends it to the body
  /// element. Should be used to overcome overflow: hidden issues.
  void hoistMenuToBody() => js.hoistMenuToBody();
  void setIsHoisted(bool hoisted) => js.setIsHoisted(hoisted);

  /// Changes the element used as an anchor for menu-surface positioning logic.
  /// Should be used with conjunction with hoistMenuToBody().
  void setAnchorElement(Element root) => js.setAnchorElement(root);

  Element getOptionByIndex(int index) => js.getOptionByIndex(index);
}

MenuComponent _preserveUndefined(Element root, foundation, args) =>
    foundation == null
        ? MenuComponent(root)
        : args == null
            ? MenuComponent(root, foundation)
            : MenuComponent(root, foundation, args);
