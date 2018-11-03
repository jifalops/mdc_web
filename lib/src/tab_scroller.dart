import 'base.dart';
import 'mdc_web/tab_scroller.dart';

/// A Tab Scroller allows for smooth native and animated scrolling of tabs.
///
/// Javascript: `mdc.tabScroller.MDCTabScroller`.
///
/// * [Design Guidelines](https://material.io/go/design-tabs)
/// * [Component Reference](https://material.io/develop/web/components/tabs/scroller/#mdctabscroller-methods)
/// * [Demo](https://material-components.github.io/material-components-web-catalog/#/component/tabs)
/// * [Source Code](https://github.com/material-components/material-components-web/blob/master/packages/mdc-tab-scroller/index.js)
class MDCTabScroller extends MDCComponent {
  static MDCTabScroller attachTo(Element root) => MDCTabScroller._attach(root);
  MDCTabScroller._attach(Element root)
      : _js = TabScrollerComponent.attachTo(root);

  MDCTabScroller(Element root, [foundation, args])
      : _js = _preserveUndefined(root, foundation, args);

  TabScrollerComponent get js => _js;
  final TabScrollerComponent _js;

  void scrollTo(num scrollX) => js.scrollTo(scrollX);
  void incrementScroll(num scrollX) => js.incrementScroll(scrollX);
  num getScrollPosition() => js.getScrollPosition();
  num getScrollContentWidth() => js.getScrollContentWidth();
}

TabScrollerComponent _preserveUndefined(Element root, foundation, args) =>
    foundation == null
        ? TabScrollerComponent(root)
        : args == null
            ? TabScrollerComponent(root, foundation)
            : TabScrollerComponent(root, foundation, args);
