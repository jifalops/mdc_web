@JS('mdc.menu')
library menu;

import 'dart:html';
import 'package:js/js.dart';
import 'base.dart';
import 'menu_surface.dart';

/// A menu displays a list of choices on a temporary surface. They appear when
/// users interact with a button, action, or other control.
///
/// Javascript: `mdc.menu.MDCMenu`.
///
/// * [Design Guidelines](https://material.io/go/design-menus)
/// * [Component Reference](https://material.io/develop/web/components/menus/#mdcmenu-properties-and-methods)
/// * [Demo](https://material-components.github.io/material-components-web-catalog/#/component/menu)
/// * [Source Code](https://github.com/material-components/material-components-web/blob/master/packages/mdc-menu/index.js)
@JS('MDCMenu')
abstract class MenuComponent extends Component {
  external static MenuComponent attachTo(Element root);
  external factory MenuComponent(Element? root,
      [MDCFoundation? foundation, args]);

  bool open;
  bool quickOpen;

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

  external Element getOptionByIndex(int index);
}
