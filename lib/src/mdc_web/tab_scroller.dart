part of mdc_web;

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
  MDCTabScroller._attach(Element root) : _js = _TabScroller.attachTo(root);

  MDCTabScroller(Element root, [foundation, args])
      : _js = _preserveUndefined(root, foundation, args);

  static _TabScroller _preserveUndefined(Element root, foundation, args) =>
      foundation == null
          ? _TabScroller(root)
          : args == null
              ? _TabScroller(root, foundation)
              : _TabScroller(root, foundation, args);

  _TabScroller get js => _js;
  final _TabScroller _js;

  void scrollTo(num scrollX) => js.scrollTo(scrollX);
  void incrementScroll(num scrollX) => js.incrementScroll(scrollX);
  num getScrollPosition() => js.getScrollPosition();
  num getScrollContentWidth() => js.getScrollContentWidth();
}

@JS('tabScroller.MDCTabScroller')
abstract class _TabScroller extends _Component {
  external static _TabScroller attachTo(Element root);
  external factory _TabScroller(Element root, [foundation, args]);

  external void scrollTo(num scrollX);
  external void incrementScroll(num scrollX);
  external num getScrollPosition();
  external num getScrollContentWidth();
}
