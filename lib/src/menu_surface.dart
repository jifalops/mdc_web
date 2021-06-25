import 'base.dart';
import 'mdc_web/menu_surface.dart';

export 'mdc_web/menu_surface.dart' show AnchorMargin;

/// A reusable surface that appears above the content of the page and can be
/// positioned adjacent to an element.
///
/// Javascript: `mdc.menuSurface.MDCMenuSurface`.
///
/// * [Component Reference](https://material.io/develop/web/components/menu-surface/#mdcmenusurface-properties-and-methods)
/// * [Source Code](https://github.com/material-components/material-components-web/blob/master/packages/mdc-menu-surface/index.js)
class MDCMenuSurface extends MDCComponent {
  static MDCMenuSurface attachTo(Element root) => MDCMenuSurface._attach(root);
  MDCMenuSurface._attach(Element root)
      : _js = MenuSurfaceComponent.attachTo(root);

  MDCMenuSurface(Element root, [MDCFoundation? foundation, args])
      : _js = _preserveUndefined(root, foundation, args);

  MenuSurfaceComponent get js => _js;
  final MenuSurfaceComponent _js;

  bool get open => js.open;
  set open(bool value) => js.open = value;
  bool get quickOpen => js.quickOpen;
  set quickOpen(bool value) => js.quickOpen = value;

  /// See [AnchorCorner] for acceptable values.
  void setAnchorCorner(int corner) => js.setAnchorCorner(corner);

  void setAnchorMargin(AnchorMargin margin) => js.setAnchorMargin(margin);
  void setFixedPosition(bool isFixed) => js.setFixedPosition(isFixed);
  void setAbsolutePosition(num x, num y) => js.setAbsolutePosition(x, y);

  /// Changes the element used as an anchor for menu-surface positioning logic.
  /// Should be used with conjunction with hoistMenuToBody().
  void setMenuSurfaceAnchorElement(Element root) =>
      js.setMenuSurfaceAnchorElement(root);

  /// Removes the menu-surface element from the DOM and appends it to the body
  /// element. Should be used to overcome overflow: hidden issues.
  void hoistMenuToBody() => js.hoistMenuToBody();
  void setIsHoisted(bool hoisted) => js.setIsHoisted(hoisted);

  static const openedEvent = 'MDCMenuSurface:opened';
  static const closedEvent = 'MDCMenuSurface:closed';
}

MenuSurfaceComponent _preserveUndefined(
        Element root, MDCFoundation? foundation, args) =>
    foundation == null
        ? MenuSurfaceComponent(root)
        : args == null
            ? MenuSurfaceComponent(root, foundation)
            : MenuSurfaceComponent(root, foundation, args);

/// The anchored corner of an [MDCMenu] or [MDCMenuSurface].
class AnchorCorner {
  static int get topLeft => MenuSurfaceCorner.TOP_LEFT;
  static int get topRight => MenuSurfaceCorner.TOP_RIGHT;
  static int get bottomLeft => MenuSurfaceCorner.BOTTOM_LEFT;
  static int get bottomRight => MenuSurfaceCorner.BOTTOM_RIGHT;
  static int get topStart => MenuSurfaceCorner.TOP_START;
  static int get topEnd => MenuSurfaceCorner.TOP_END;
  static int get bottomStart => MenuSurfaceCorner.BOTTOM_START;
  static int get bottomEnd => MenuSurfaceCorner.BOTTOM_END;
}
