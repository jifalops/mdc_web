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
  external factory MDCTabBar(Element element,
      [MDCFoundation foundation, args]);
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
  external factory MDCTab(Element element,
      [MDCFoundation foundation, args]);
  external static MDCTab attachTo(Element element);

  external bool get active;

  external void activate([/*DOMRect*/ dynamic previousIndicatorClientRect]);
  external void deactivate();
  external void focus();
  external /*DOMRect*/ computeIndicatorClientRect();
  // external MDCTabDimensions computeDimensions();

  /// Emitted when the Tab is interacted with, regardless of its active state.
  /// Used by parent components to know which Tab to activate.
  ///
  /// Event data: {"detail": {"tab": MDCTab}}
  static const interactedEvent = 'MDCTab:interacted';
}
