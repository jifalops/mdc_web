part of mdc_web;

/// Tabs organize and allow navigation between groups of content that are
/// related and at the same level of hierarchy. The Tab Bar contains the Tab
/// Scroller and Tab components.
///
/// Javascript: `mdc.tabBar.MDCTabBar`.
///
/// See the [component reference](https://material.io/develop/web/components/tabs/tab-bar/#mdctabbar-properties-and-methods)
/// and [source code](https://github.com/material-components/material-components-web/blob/master/packages/mdc-tab-bar/index.js).
@JS('tabBar.MDCTabBar')
abstract class MDCTabBar extends MDCComponent {
  external factory MDCTabBar(Element element, [MDCFoundation foundation, args]);
  external static MDCTabBar attachTo(Element element);

  external void activateTab(num index);
  external void scrollIntoView(num index);

  // Event data: {"detail": {"index": number}}
  static const activatedEvent = 'MDCTabBar:activated';
}

/// A tab governs the visibility of one group of content.
///
/// Javascript: `mdc.tab.MDCTab`.
///
/// See the [component reference](https://material.io/develop/web/components/tabs/tab/#mdctab-properties-and-methods)
/// and [source code](https://github.com/material-components/material-components-web/blob/master/packages/mdc-tab/index.js).
@JS('tab.MDCTab')
abstract class MDCTab extends MDCComponent {
  external factory MDCTab(Element element, [MDCFoundation foundation, args]);
  external static MDCTab attachTo(Element element);

  external bool get active;

  /// [previousIndicatorClientRect] is a DOMRect. See also
  /// [computeIndicatorClientRect()].
  external void activate([/*DOMRect*/ previousIndicatorClientRect]);
  external void deactivate();
  external void focus();

  /// Returns a DOMRect.
  external /*DOMRect*/ computeIndicatorClientRect();

  /// {rootLeft: number, rootRight: number, contentLeft: number, contentRight:
  /// number}
  external /*MDCTabDimensions*/ Map computeDimensions();

  /// Emitted when the Tab is interacted with, regardless of its active state.
  /// Used by parent components to know which Tab to activate.
  ///
  /// Event data: {"detail": {"tab": MDCTab}}
  static const interactedEvent = 'MDCTab:interacted';
}

/// A Tab Indicator is a visual guide that shows which Tab is active.
///
/// Javascript: `mdc.tabIndicator.MDCTabIndicator`.
///
/// See the [component reference](https://material.io/develop/web/components/tabs/indicator/#mdctabindicator-methods)
/// and [source code](https://github.com/material-components/material-components-web/blob/master/packages/mdc-tab-indicator/index.js).
@JS('tabIndicator.MDCTabIndicator')
abstract class MDCTabIndicator extends MDCComponent {
  external factory MDCTabIndicator(Element element,
      [MDCFoundation foundation, args]);
  external static MDCTabIndicator attachTo(Element element);

  /// [previousIndicatorClientRect] is a DOMRect. See also
  /// [computeIndicatorClientRect()].
  external void activate([/*DOMRect*/ previousIndicatorClientRect]);
  external void deactivate();

  /// Returns a DOMRect.
  external /*DOMRect*/ computeContentClientRect();
}



/// A Tab Scroller allows for smooth native and animated scrolling of tabs.
///
/// Javascript: `mdc.tabScroller.MDCTabScroller`.
///
/// See the [component reference](https://material.io/develop/web/components/tabs/scroller/#mdctabscroller-methods)
/// and [source code](https://github.com/material-components/material-components-web/blob/master/packages/mdc-tab-scroller/index.js).
@JS('tabScroller.MDCTabScroller')
abstract class MDCTabScroller extends MDCComponent {
  external factory MDCTabScroller(Element element,
      [MDCFoundation foundation, args]);
  external static MDCTabScroller attachTo(Element element);

  external void scrollTo(num scrollX);
  external void incrementScroll(num scrollX);
  external num getScrollPosition();
  external num getScrollContentWidth();
}