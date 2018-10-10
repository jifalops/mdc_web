part of mdc_web;

/// A Tab Scroller allows for smooth native and animated scrolling of tabs.
///
/// Javascript: `mdc.tabScroller.MDCTabScroller`.
///
/// See the [component reference](https://material.io/develop/web/components/tabs/scroller/#mdctabscroller-methods)
/// and [source code](https://github.com/material-components/material-components-web/blob/master/packages/mdc-tab-scroller/index.js).
@JS('tabScroller.MDCTabScroller')
abstract class MDCTabScroller extends MDCComponent {
  external static MDCTabScroller attachTo(Element element);
  external factory MDCTabScroller(Element element,
      [MDCFoundation foundation, args]);

  external void scrollTo(num scrollX);
  external void incrementScroll(num scrollX);
  external num getScrollPosition();
  external num getScrollContentWidth();
}
