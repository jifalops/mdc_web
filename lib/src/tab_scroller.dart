part of mdc_web;

/// A Tab Scroller allows for smooth native and animated scrolling of tabs.
///
/// Javascript: `mdc.tabScroller.MDCTabScroller`.
///
/// * [Design Guidelines](https://material.io/go/design-tabs)
/// * [Component Reference](https://material.io/develop/web/components/tabs/scroller/#mdctabscroller-methods)
/// * [Demo](https://material-components.github.io/material-components-web-catalog/#/component/tabs)
/// * [Source Code](https://github.com/material-components/material-components-web/blob/master/packages/mdc-tab-scroller/index.js)
class MDCTabScroller extends MDCComponent<_TabScroller> {
  static MDCTabScroller attachTo(Element root) => MDCTabScroller._attach(root);
  MDCTabScroller._attach(Element root) : super._(_TabScroller.attachTo(root));

  MDCTabScroller(Element root, [foundation, args])
      : super._(_preserveUndefined(root, foundation, args));

  static _TabScroller _preserveUndefined(Element root, foundation, args) =>
      foundation == null
          ? _TabScroller(root)
          : args == null
              ? _TabScroller(root, foundation)
              : _TabScroller(root, foundation, args);

  void scrollTo(num scrollX) => _js.scrollTo(scrollX);
  void incrementScroll(num scrollX) => _js.incrementScroll(scrollX);
  num getScrollPosition() => _js.getScrollPosition();
  num getScrollContentWidth() => _js.getScrollContentWidth();
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
