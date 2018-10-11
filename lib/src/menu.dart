@JS('mdc.menu')
library mdc_web_menu;

import 'dart:html';
import 'package:js/js.dart';
import 'base.dart';
import 'menu_surface.dart';

/// A menu displays a list of choices on a temporary surface. They appear when
/// users interact with a button, action, or other control.
///
/// Javascript: `mdc.menu.MDCMenu`.
///
/// See the [component reference](https://material.io/develop/web/components/menus/#mdcmenu-properties-and-methods)
/// and [source code](https://github.com/material-components/material-components-web/blob/master/packages/mdc-menu/index.js).
@JS('MDCMenu')
abstract class Menu extends Component {
  external static Menu attachTo(Element element);
  external factory Menu(Element element, [Foundation foundation, args]);

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
  external void setAnchorElement(Element element);

  external Element getOptionByIndex(num index);
}

/// [Menu] events and helpers.
class menu {
  /// Casts [Menu.items].
  List<Element> items(Menu menu) => List.from(menu.items);
}
